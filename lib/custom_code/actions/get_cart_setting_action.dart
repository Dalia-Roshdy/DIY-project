// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/app_events/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!

import 'package:collection/collection.dart';

Future getCartSettingAction() async {
  final settingsQuery = await querySettingsRecordOnce(
    queryBuilder: (settingsRecord) => settingsRecord.where(
      'key',
      whereIn: ['shipping', 'tax', 'motor_shaft_length_fees'],
    ),
  );

  if (settingsQuery.isEmpty) {
    return;
  }

  final shippingRecord = settingsQuery.firstWhereOrNull(
    (s) => s.key == 'shipping',
  );
  final taxRecord = settingsQuery.firstWhereOrNull(
    (s) => s.key == 'tax',
  );
  final motorShaftRecord = settingsQuery.firstWhereOrNull(
    (s) => s.key == 'motor_shaft_length_fees',
  );

  FFAppState().updateCartSettingStruct(
    (s) => s
      ..shipping = shippingRecord?.value ?? s.shipping
      ..tax = taxRecord?.value ?? s.tax
      ..motorSLFees = motorShaftRecord?.value ?? s.motorSLFees,
  );
}

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

Future<void> filterMotorItemsV2() async {
  List<PartCardDTOStruct> result = [];

  try {
    final itemSnapshot = await FirebaseFirestore.instance
        .collection('Items')
        .where('specType', isEqualTo: 'motor')
        .where('qtyOnHand', isGreaterThan: 0)
        .get();

    final itemDocs = itemSnapshot.docs;
    if (itemDocs.isEmpty) return;

    // Dedup motorSpecId refs to avoid redundant reads
    final Map<String, DocumentReference> uniqueSpecRefs = {};
    for (final doc in itemDocs) {
      final data = doc.data() as Map<String, dynamic>;
      final ref = data['motorSpecId'] as DocumentReference?;
      if (ref != null) uniqueSpecRefs[ref.path] = ref;
    }

    // Fetch all needed MotorSpec docs in parallel
    final specDocs = await Future.wait(
      uniqueSpecRefs.values.map((ref) => ref.get()),
    );

    final Map<String, Map<String, dynamic>> motorSpecDataMap = {};
    for (final snap in specDocs) {
      if (snap.exists) {
        motorSpecDataMap[snap.reference.path] =
            snap.data() as Map<String, dynamic>;
      }
    }

    for (final itemDoc in itemDocs) {
      final itemData = itemDoc.data() as Map<String, dynamic>;
      final itemMotorSpecRef = itemData['motorSpecId'] as DocumentReference?;

      Map<String, dynamic> motorSpecData = {};
      if (itemMotorSpecRef != null &&
          motorSpecDataMap.containsKey(itemMotorSpecRef.path)) {
        motorSpecData = motorSpecDataMap[itemMotorSpecRef.path]!;
      }

      result.add(PartCardDTOStruct(
        id: itemDoc.reference,
        type: 'MOTOR',
        title: itemData['partNumber'] as String? ?? '',
        desc: itemData['description'] as String? ?? '',
        price: ((itemData['discountPrice'] as num?)?.toDouble() ?? 0) > 0
            ? (itemData['discountPrice'] as num).toDouble()
            : ((itemData['salePrice'] as num?)?.toDouble() ?? 0.0),
        image: itemData['image'] is List
            ? List<String>.from(itemData['image'])
            : [itemData['image'] as String? ?? ''],
        motorCard: MotorCardStruct(
          motorRpm: (motorSpecData['rpm'] as num?)?.toInt() ?? 0,
          motorVolt: (motorSpecData['volt'] as num?)?.toInt() ?? 0,
          motorAmp: (motorSpecData['amp'] as num?)?.toDouble() ?? 0.0,
          motorTemp: (motorSpecData['ambientTempC'] as num?)?.toDouble() ?? 0.0,
          motorNOSpeeds: (motorSpecData['noOfSpeeds'] as num?)?.toInt() ?? 0,
          motorRotation: motorSpecData['rotationDirection'] as String? ?? '',
          motorHeight: (motorSpecData['bodyHeight'] as num?)?.toDouble() ?? 0.0,
          motorAxleDiameter:
              (motorSpecData['axleDiameter'] as num?)?.toDouble() ?? 0.0,
          motorCapacitorMFD:
              (motorSpecData['capacitorMicroFarad'] as num?)?.toDouble() ?? 0.0,
          motorBodyDiameter:
              (motorSpecData['bodyDiameter'] as num?)?.toDouble() ?? 0.0,
          motorHpMin: (motorSpecData['hpMin'] as num?)?.toDouble() ?? 0.0,
          motorHpMax: (motorSpecData['hpMax'] as num?)?.toDouble() ?? 0.0,
          motorShaftLength:
              (motorSpecData['shaftLength'] as num?)?.toDouble() ?? 0.0,
          motorWireLength:
              (motorSpecData['wireLength'] as num?)?.toDouble() ?? 0.0,
        ),
        capacitorCard: null,
        contactorCard: null,
      ));
    }

    FFAppState().update(() {
      FFAppState().MotorCardList = result;
    });
  } catch (e) {
    debugPrint('Error in filterMotorItems: $e');
  }
}

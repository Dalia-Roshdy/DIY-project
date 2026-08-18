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

/// Web only.
///
/// Tells the Firestore SDK to auto-detect when long-polling is required
/// instead of stalling on a WebChannel handshake Safari cannot complete. Must
/// run before the first Firestore call.
Future configureFirestoreWeb() async {
  if (!isWeb) {
    return;
  }
  try {
    FirebaseFirestore.instance.settings = const Settings(
      webExperimentalForceLongPolling: true,
    );
  } catch (e) {
    // Thrown if Firestore has already been started; the settings applied on
    // the first call are still in effect, so this is safe to swallow.
    debugPrint('Firestore web settings not applied: $e');
  }
}

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

Future enableFirestoreWebCache() async {
  if (!isWeb) {
    return;
  }

  try {
    await FirebaseFirestore.instance.enablePersistence(
      const PersistenceSettings(
        synchronizeTabs: true,
      ),
    );

    debugPrint('Firestore persistent web cache enabled');
  } on FirebaseException catch (e) {
    debugPrint(
      'Firestore cache failed: ${e.code} - ${e.message}',
    );
  } catch (e) {
    debugPrint('Firestore cache failed: $e');
  }
}

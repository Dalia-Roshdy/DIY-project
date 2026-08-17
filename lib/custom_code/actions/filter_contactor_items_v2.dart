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

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> filterContactorItemsV2() async {
  try {
    final itemsSnapshot = await FirebaseFirestore.instance
        .collection('Items')
        .where('specType', isEqualTo: 'CONTACTOR')
        .where('isInStock', isEqualTo: true)
        .get();

    final itemDocs = itemsSnapshot.docs;
    if (itemDocs.isEmpty) return;

    // Dedup contactorSpecId refs to avoid redundant reads
    final Map<String, DocumentReference> uniqueSpecRefs = {};
    for (final doc in itemDocs) {
      final data = doc.data();
      final ref = data['contactorSpecId'] as DocumentReference?;
      if (ref != null) uniqueSpecRefs[ref.path] = ref;
    }

    // Fetch all needed ContactorSpec docs in parallel
    final specDocs = await Future.wait(
      uniqueSpecRefs.values.map((ref) => ref.get()),
    );

    final Map<String, Map<String, dynamic>> specDataMap = {};
    for (final snap in specDocs) {
      if (snap.exists) {
        specDataMap[snap.reference.path] = snap.data() as Map<String, dynamic>;
      }
    }

    final List<PartCardDTOStruct> results = [];

    for (final itemDoc in itemDocs) {
      final itemData = itemDoc.data();
      final specRef = itemData['contactorSpecId'] as DocumentReference?;

      Map<String, dynamic>? specData;
      if (specRef != null) {
        specData = specDataMap[specRef.path];
      }

      results.add(
        PartCardDTOStruct(
          id: itemDoc.reference,
          type: 'CONTACTOR',
          title: itemData['partNumber'] as String? ?? '',
          desc: itemData['description'] as String? ?? '',
          price: ((itemData['discountPrice'] as num?)?.toDouble() ?? 0) > 0
              ? (itemData['discountPrice'] as num).toDouble()
              : ((itemData['salePrice'] as num?)?.toDouble() ?? 0.0),
          image: itemData['image'] is List
              ? List<String>.from(itemData['image'])
              : [itemData['image'] as String? ?? ''],
          contactorCard: ContactorCardStruct(
            contCoilVolt: (specData?['coilVoltage'] as num?)?.toDouble() ?? 0.0,
            contratedAmp: (specData?['ratedAmp'] as num?)?.toDouble() ?? 0.0,
            contLength: (specData?['length'] as num?)?.toDouble() ?? 0.0,
            contWidth: (specData?['width'] as num?)?.toDouble() ?? 0.0,
            contDepth: (specData?['depth'] as num?)?.toDouble() ?? 0.0,
            contNumberOfPoles:
                (specData?['numberOfPoles'] as num?)?.toInt() ?? 0,
            contTerminalType: specData?['terminalType'] as String? ?? '',
            contDescription: specData?['description'] as String? ?? '',
          ),
        ),
      );
    }

    FFAppState().update(() {
      FFAppState().ContCardList = results;
    });
  } catch (e) {
    print('filterContactorItemsV2 error: $e');
  }
}

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

Future<void> filterCapacitorItemsV2() async {
  try {
    final itemsSnapshot = await FirebaseFirestore.instance
        .collection('Items')
        .where('specType', isEqualTo: 'CAPACITOR')
        .where('isInStock', isEqualTo: true)
        .get();

    final itemDocs = itemsSnapshot.docs;
    if (itemDocs.isEmpty) return;

    // Dedup capacitorSpecsId refs to avoid redundant reads
    final Map<String, DocumentReference> uniqueSpecRefs = {};
    for (final doc in itemDocs) {
      final data = doc.data();
      final ref = data['capacitorSpecsId'] as DocumentReference?;
      if (ref != null) uniqueSpecRefs[ref.path] = ref;
    }

    // Fetch all needed CapacitorSpec docs in parallel
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
      final specRef = itemData['capacitorSpecsId'] as DocumentReference?;

      Map<String, dynamic> specData = {};
      if (specRef != null && specDataMap.containsKey(specRef.path)) {
        specData = specDataMap[specRef.path]!;
      }

      final double discountPrice =
          (itemData['discountPrice'] as num?)?.toDouble() ?? 0.0;
      final double salePrice =
          (itemData['salePrice'] as num?)?.toDouble() ?? 0.0;

      results.add(
        PartCardDTOStruct(
          id: itemDoc.reference,
          type: 'CAPACITOR',
          title: itemData['partNumber']?.toString() ?? '',
          desc: itemData['description']?.toString() ?? '',
          price: discountPrice > 0 ? discountPrice : salePrice,
          image: itemData['image'] is List
              ? List<String>.from(itemData['image'])
              : [itemData['image'] as String? ?? ''],
          capacitorCard: CapacitorCardStruct(
            capacMFD1: (specData['microFarad1'] as num?)?.toDouble() ?? 0.0,
            capacMFD2: (specData['microFarad2'] as num?)?.toDouble() ?? 0.0,
            capacVolt: specData['volt']?.toString() ?? '',
            capacShape: specData['shape'] == null
                ? null
                : deserializeEnum<CapacitorShape>(specData['shape'].toString()),
            capacType: specData['type'] == null
                ? null
                : deserializeEnum<CapacitorType>(specData['type'].toString()),
            capacDiameter: (specData['diameter'] as num?)?.toDouble() ?? 0.0,
            capacHeight: (specData['height'] as num?)?.toDouble() ?? 0.0,
            capacWidth: (specData['width'] as num?)?.toDouble() ?? 0.0,
            capacDepth: (specData['depth'] as num?)?.toDouble() ?? 0.0,
            capacTotalLength:
                (specData['totalLength'] as num?)?.toDouble() ?? 0.0,
            capacTolerance: (specData['tolerance'] as num?)?.toInt() ?? 0,
            capacTempLow: (specData['tempLow'] as num?)?.toInt() ?? 0,
            capacTempHigh: (specData['tempHigh'] as num?)?.toInt() ?? 0,
          ),
          motorCard: null,
          contactorCard: null,
        ),
      );
    }

    FFAppState().update(() {
      FFAppState().CapacCardList = results;
    });
  } catch (e) {
    // swallow errors, list stays unchanged
    debugPrint('Error in filterMotorItems: $e');
  }
}

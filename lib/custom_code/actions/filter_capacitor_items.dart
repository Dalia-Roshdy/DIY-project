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

// Create FlutterFlow custom action: inputs `DocumentReference? acModelRef`, `double? mfd1`, `double? mfd2`, `String? shape`, `String? type`, `int? volt`. Return `List<PartCardDTOStruct>`. If `acModelRef` not null, read ACModel and use `capacitorSpecId` to filter. Query `CapacitorSpec` with non-null filters (`microFarad1`,`microFarad2`,`shape`,`type`,`voltageRating`). Collect refs. Query `Items` where `specType=="capacitor"`, `capacitorSpecId in refs`, `isInStock==true`. Map to DTO.
// Additional imports (if needed)
import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<PartCardDTOStruct>> filterCapacitorItems(
  DocumentReference? acModelRef,
  double? mfd1,
  double? mfd2,
  String? type,
  String? shape,
) async {
  try {
    final String normalizedType = type?.trim() ?? '';
    final String normalizedShape = shape?.trim() ?? '';

    Query<Map<String, dynamic>> specQuery =
        FirebaseFirestore.instance.collection('CapacitorSpec');

    // Filter by AC Model
    if (acModelRef != null) {
      final acModelSnapshot = await acModelRef.get();

      if (!acModelSnapshot.exists) {
        return [];
      }

      final acModelData = acModelSnapshot.data() as Map<String, dynamic>?;

      final dynamic rawCapSpecRef = acModelData?['capacitorSpecId'];

      if (rawCapSpecRef is! DocumentReference) {
        return [];
      }

      specQuery = specQuery.where(
        FieldPath.documentId,
        isEqualTo: rawCapSpecRef.id,
      );
    }

    // Optional filters
    if (mfd1 != null) {
      specQuery = specQuery.where('microFarad1', isEqualTo: mfd1);
    }

    if (mfd2 != null) {
      specQuery = specQuery.where('microFarad2', isEqualTo: mfd2);
    }

    if (normalizedType.isNotEmpty) {
      specQuery = specQuery.where('type', isEqualTo: normalizedType);
    }

    if (normalizedShape.isNotEmpty) {
      specQuery = specQuery.where('shape', isEqualTo: normalizedShape);
    }

    final specSnapshot = await specQuery.get();

    if (specSnapshot.docs.isEmpty) {
      return [];
    }
    // -----------
    print(specSnapshot.docs.length);

    final List<DocumentReference<Object?>> specRefs = [];
    final Map<String, Map<String, dynamic>> specsById = {};

    for (final specDoc in specSnapshot.docs) {
      specRefs.add(specDoc.reference);
      specsById[specDoc.id] = specDoc.data();
    }

    final List<PartCardDTOStruct> results = [];

    const int chunkSize = 30;

    for (int i = 0; i < specRefs.length; i += chunkSize) {
      final chunk = specRefs.sublist(
        i,
        i + chunkSize > specRefs.length ? specRefs.length : i + chunkSize,
      );

      final itemsSnapshot = await FirebaseFirestore.instance
          .collection('Items')
          .where('specType', isEqualTo: 'CAPACITOR')
          .where('capacitorSpecsId', whereIn: chunk)
          .where('isInStock', isEqualTo: true)
          .get();

      for (final itemDoc in itemsSnapshot.docs) {
        final itemData = itemDoc.data();

        final dynamic rawSpecRef = itemData['capacitorSpecsId'];

        if (rawSpecRef is! DocumentReference) {
          continue;
        }

        final specData = specsById[rawSpecRef.id];

        if (specData == null) {
          continue;
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
                  : deserializeEnum<CapacitorShape>(
                      specData['shape'].toString(),
                    ),
              capacType: specData['type'] == null
                  ? null
                  : deserializeEnum<CapacitorType>(
                      specData['type'].toString(),
                    ),
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
    }

    return results;
  } on FirebaseException {
    return [];
  } catch (_) {
    return [];
  }
}

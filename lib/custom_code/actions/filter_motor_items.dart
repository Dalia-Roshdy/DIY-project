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

//import '/backend/schema/structs/index.dart';
//import '/flutter_flow/flutter_flow_util.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

// Create FlutterFlow custom action: inputs `DocumentReference? acModelRef`, `int? volt`, `int? rpm`. Return `List<PartCardDTOStruct>`. If `acModelRef` not null, read ACModel doc and get `motorSpecId`. Query MotorSpec: filter by that motorSpecId if exists, plus `volt` if not null, plus `rpm` if not null. Collect MotorSpec refs. Query Items where `specType=="motor"` and `motorSpecId in refs`. Map Item + MotorSpec data to PartCardDTO.

Future<List<PartCardDTOStruct>> filterMotorItems(DocumentReference? acModelRef,
    int? volt, double? hp, int? rpm, String? rotation) async {
  List<PartCardDTOStruct> result = [];

  try {
    DocumentReference? motorSpecIdRef;

    if (acModelRef != null) {
      final acModelDoc = await acModelRef.get();
      if (acModelDoc.exists) {
        final acModelData = acModelDoc.data() as Map<String, dynamic>?;
        if (acModelData != null && acModelData.containsKey('motorSpecId')) {
          motorSpecIdRef = acModelData['motorSpecId'] as DocumentReference?;
        }
      }
    }

    Query motorSpecQuery = FirebaseFirestore.instance.collection('MotorSpec');

    if (motorSpecIdRef != null) {
      motorSpecQuery = motorSpecQuery.where(FieldPath.documentId,
          isEqualTo: motorSpecIdRef.id);
    }

    if (volt != null) {
      motorSpecQuery = motorSpecQuery.where('volt', isEqualTo: volt);
    }

    if (hp != null) {
      motorSpecQuery = motorSpecQuery.where('hpMin', isLessThanOrEqualTo: hp);
      motorSpecQuery =
          motorSpecQuery.where('hpMax', isGreaterThanOrEqualTo: hp);
    }

    if (rpm != null) {
      motorSpecQuery = motorSpecQuery.where('rpm', isEqualTo: rpm);
    }

    if (rotation != null) {
      motorSpecQuery =
          motorSpecQuery.where('rotationDirection', isEqualTo: rotation);
    }

    final rawSnapshot = await motorSpecQuery.get();
    List<QueryDocumentSnapshot> motorSpecDocs = rawSnapshot.docs;

    if (motorSpecDocs.isEmpty) {
      return result;
    }

    final List<DocumentReference> motorSpecRefs =
        motorSpecDocs.map((doc) => doc.reference).toList();

    final Map<String, Map<String, dynamic>> motorSpecDataMap = {};
    for (final doc in motorSpecDocs) {
      motorSpecDataMap[doc.reference.path] = doc.data() as Map<String, dynamic>;
    }

    const int chunkSize = 30;
    final List<QueryDocumentSnapshot> allItemDocs = [];

    for (int i = 0; i < motorSpecRefs.length; i += chunkSize) {
      final chunk = motorSpecRefs.sublist(
        i,
        i + chunkSize > motorSpecRefs.length
            ? motorSpecRefs.length
            : i + chunkSize,
      );

      final itemSnapshot = await FirebaseFirestore.instance
          .collection('Items')
          .where('specType', isEqualTo: 'motor')
          .where('motorSpecId', whereIn: chunk)
          .where('qtyOnHand', isGreaterThan: 0)
          .get();

      allItemDocs.addAll(itemSnapshot.docs);
    }

    for (final itemDoc in allItemDocs) {
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
  } catch (e) {
    debugPrint('Error in filterMotorItems: $e');
  }

  return result;
}

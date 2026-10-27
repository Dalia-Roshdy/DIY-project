import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeliveryZipCodesRecord extends FirestoreRecord {
  DeliveryZipCodesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "zipCode" field.
  String? _zipCode;
  String get zipCode => _zipCode ?? '';
  bool hasZipCode() => _zipCode != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  void _initializeFields() {
    _zipCode = snapshotData['zipCode'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DeliveryZipCodes');

  static Stream<DeliveryZipCodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeliveryZipCodesRecord.fromSnapshot(s));

  static Future<DeliveryZipCodesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DeliveryZipCodesRecord.fromSnapshot(s));

  static DeliveryZipCodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeliveryZipCodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeliveryZipCodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeliveryZipCodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeliveryZipCodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeliveryZipCodesRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createDeliveryZipCodesRecordData({
  String? zipCode,
  bool? isActive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'zipCode': zipCode,
      'isActive': isActive,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeliveryZipCodesRecordDocumentEquality
    implements Equality<DeliveryZipCodesRecord> {
  const DeliveryZipCodesRecordDocumentEquality();

  @override
  bool equals(DeliveryZipCodesRecord? e1, DeliveryZipCodesRecord? e2) {
    return e1?.zipCode == e2?.zipCode && e1?.isActive == e2?.isActive;
  }

  @override
  int hash(DeliveryZipCodesRecord? e) =>
      const ListEquality().hash([e?.zipCode, e?.isActive]);

  @override
  bool isValidKey(Object? o) => o is DeliveryZipCodesRecord;
}

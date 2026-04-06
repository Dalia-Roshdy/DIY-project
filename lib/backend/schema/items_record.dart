import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsRecord extends FirestoreRecord {
  ItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "specType" field.
  String? _specType;
  String get specType => _specType ?? '';
  bool hasSpecType() => _specType != null;

  // "motorSpecId" field.
  DocumentReference? _motorSpecId;
  DocumentReference? get motorSpecId => _motorSpecId;
  bool hasMotorSpecId() => _motorSpecId != null;

  // "fanSpecId" field.
  DocumentReference? _fanSpecId;
  DocumentReference? get fanSpecId => _fanSpecId;
  bool hasFanSpecId() => _fanSpecId != null;

  // "contactorSpecId" field.
  DocumentReference? _contactorSpecId;
  DocumentReference? get contactorSpecId => _contactorSpecId;
  bool hasContactorSpecId() => _contactorSpecId != null;

  // "miscId" field.
  DocumentReference? _miscId;
  DocumentReference? get miscId => _miscId;
  bool hasMiscId() => _miscId != null;

  // "partNumber" field.
  String? _partNumber;
  String get partNumber => _partNumber ?? '';
  bool hasPartNumber() => _partNumber != null;

  // "alternatePartNumbers" field.
  List<String>? _alternatePartNumbers;
  List<String> get alternatePartNumbers => _alternatePartNumbers ?? const [];
  bool hasAlternatePartNumbers() => _alternatePartNumbers != null;

  // "make" field.
  String? _make;
  String get make => _make ?? '';
  bool hasMake() => _make != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  bool hasImage() => _image != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "width" field.
  double? _width;
  double get width => _width ?? 0.0;
  bool hasWidth() => _width != null;

  // "depth" field.
  double? _depth;
  double get depth => _depth ?? 0.0;
  bool hasDepth() => _depth != null;

  // "commonIssues" field.
  List<String>? _commonIssues;
  List<String> get commonIssues => _commonIssues ?? const [];
  bool hasCommonIssues() => _commonIssues != null;

  // "qtyOnHand" field.
  int? _qtyOnHand;
  int get qtyOnHand => _qtyOnHand ?? 0;
  bool hasQtyOnHand() => _qtyOnHand != null;

  // "qtyReserved" field.
  int? _qtyReserved;
  int get qtyReserved => _qtyReserved ?? 0;
  bool hasQtyReserved() => _qtyReserved != null;

  // "qtyIncoming" field.
  int? _qtyIncoming;
  int get qtyIncoming => _qtyIncoming ?? 0;
  bool hasQtyIncoming() => _qtyIncoming != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  // "minStock" field.
  int? _minStock;
  int get minStock => _minStock ?? 0;
  bool hasMinStock() => _minStock != null;

  // "stockStatus" field.
  String? _stockStatus;
  String get stockStatus => _stockStatus ?? '';
  bool hasStockStatus() => _stockStatus != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _specType = snapshotData['specType'] as String?;
    _motorSpecId = snapshotData['motorSpecId'] as DocumentReference?;
    _fanSpecId = snapshotData['fanSpecId'] as DocumentReference?;
    _contactorSpecId = snapshotData['contactorSpecId'] as DocumentReference?;
    _miscId = snapshotData['miscId'] as DocumentReference?;
    _partNumber = snapshotData['partNumber'] as String?;
    _alternatePartNumbers = getDataList(snapshotData['alternatePartNumbers']);
    _make = snapshotData['make'] as String?;
    _model = snapshotData['model'] as String?;
    _description = snapshotData['description'] as String?;
    _image = getDataList(snapshotData['image']);
    _weight = castToType<double>(snapshotData['weight']);
    _height = castToType<double>(snapshotData['height']);
    _width = castToType<double>(snapshotData['width']);
    _depth = castToType<double>(snapshotData['depth']);
    _commonIssues = getDataList(snapshotData['commonIssues']);
    _qtyOnHand = castToType<int>(snapshotData['qtyOnHand']);
    _qtyReserved = castToType<int>(snapshotData['qtyReserved']);
    _qtyIncoming = castToType<int>(snapshotData['qtyIncoming']);
    _warehouseId = snapshotData['warehouseId'] as String?;
    _minStock = castToType<int>(snapshotData['minStock']);
    _stockStatus = snapshotData['stockStatus'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Items');

  static Stream<ItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemsRecord.fromSnapshot(s));

  static Future<ItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemsRecord.fromSnapshot(s));

  static ItemsRecord fromSnapshot(DocumentSnapshot snapshot) => ItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemsRecordData({
  String? id,
  String? specType,
  DocumentReference? motorSpecId,
  DocumentReference? fanSpecId,
  DocumentReference? contactorSpecId,
  DocumentReference? miscId,
  String? partNumber,
  String? make,
  String? model,
  String? description,
  double? weight,
  double? height,
  double? width,
  double? depth,
  int? qtyOnHand,
  int? qtyReserved,
  int? qtyIncoming,
  String? warehouseId,
  int? minStock,
  String? stockStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'specType': specType,
      'motorSpecId': motorSpecId,
      'fanSpecId': fanSpecId,
      'contactorSpecId': contactorSpecId,
      'miscId': miscId,
      'partNumber': partNumber,
      'make': make,
      'model': model,
      'description': description,
      'weight': weight,
      'height': height,
      'width': width,
      'depth': depth,
      'qtyOnHand': qtyOnHand,
      'qtyReserved': qtyReserved,
      'qtyIncoming': qtyIncoming,
      'warehouseId': warehouseId,
      'minStock': minStock,
      'stockStatus': stockStatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemsRecordDocumentEquality implements Equality<ItemsRecord> {
  const ItemsRecordDocumentEquality();

  @override
  bool equals(ItemsRecord? e1, ItemsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.specType == e2?.specType &&
        e1?.motorSpecId == e2?.motorSpecId &&
        e1?.fanSpecId == e2?.fanSpecId &&
        e1?.contactorSpecId == e2?.contactorSpecId &&
        e1?.miscId == e2?.miscId &&
        e1?.partNumber == e2?.partNumber &&
        listEquality.equals(
            e1?.alternatePartNumbers, e2?.alternatePartNumbers) &&
        e1?.make == e2?.make &&
        e1?.model == e2?.model &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.image, e2?.image) &&
        e1?.weight == e2?.weight &&
        e1?.height == e2?.height &&
        e1?.width == e2?.width &&
        e1?.depth == e2?.depth &&
        listEquality.equals(e1?.commonIssues, e2?.commonIssues) &&
        e1?.qtyOnHand == e2?.qtyOnHand &&
        e1?.qtyReserved == e2?.qtyReserved &&
        e1?.qtyIncoming == e2?.qtyIncoming &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.minStock == e2?.minStock &&
        e1?.stockStatus == e2?.stockStatus;
  }

  @override
  int hash(ItemsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.specType,
        e?.motorSpecId,
        e?.fanSpecId,
        e?.contactorSpecId,
        e?.miscId,
        e?.partNumber,
        e?.alternatePartNumbers,
        e?.make,
        e?.model,
        e?.description,
        e?.image,
        e?.weight,
        e?.height,
        e?.width,
        e?.depth,
        e?.commonIssues,
        e?.qtyOnHand,
        e?.qtyReserved,
        e?.qtyIncoming,
        e?.warehouseId,
        e?.minStock,
        e?.stockStatus
      ]);

  @override
  bool isValidKey(Object? o) => o is ItemsRecord;
}

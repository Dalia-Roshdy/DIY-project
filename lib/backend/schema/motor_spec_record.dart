import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MotorSpecRecord extends FirestoreRecord {
  MotorSpecRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "shaftLenght" field.
  bool? _shaftLenght;
  bool get shaftLenght => _shaftLenght ?? false;
  bool hasShaftLenght() => _shaftLenght != null;

  // "rotationDirection" field.
  String? _rotationDirection;
  String get rotationDirection => _rotationDirection ?? '';
  bool hasRotationDirection() => _rotationDirection != null;

  // "volt" field.
  int? _volt;
  int get volt => _volt ?? 0;
  bool hasVolt() => _volt != null;

  // "amp" field.
  double? _amp;
  double get amp => _amp ?? 0.0;
  bool hasAmp() => _amp != null;

  // "hp" field.
  double? _hp;
  double get hp => _hp ?? 0.0;
  bool hasHp() => _hp != null;

  // "rpm" field.
  int? _rpm;
  int get rpm => _rpm ?? 0;
  bool hasRpm() => _rpm != null;

  // "bodyDiameter" field.
  double? _bodyDiameter;
  double get bodyDiameter => _bodyDiameter ?? 0.0;
  bool hasBodyDiameter() => _bodyDiameter != null;

  // "bodyHeight" field.
  double? _bodyHeight;
  double get bodyHeight => _bodyHeight ?? 0.0;
  bool hasBodyHeight() => _bodyHeight != null;

  // "axleDiameter" field.
  double? _axleDiameter;
  double get axleDiameter => _axleDiameter ?? 0.0;
  bool hasAxleDiameter() => _axleDiameter != null;

  // "capacitorMicroFarad" field.
  double? _capacitorMicroFarad;
  double get capacitorMicroFarad => _capacitorMicroFarad ?? 0.0;
  bool hasCapacitorMicroFarad() => _capacitorMicroFarad != null;

  // "capacitorVolt" field.
  int? _capacitorVolt;
  int get capacitorVolt => _capacitorVolt ?? 0;
  bool hasCapacitorVolt() => _capacitorVolt != null;

  // "noOfSpeeds" field.
  int? _noOfSpeeds;
  int get noOfSpeeds => _noOfSpeeds ?? 0;
  bool hasNoOfSpeeds() => _noOfSpeeds != null;

  // "frameId" field.
  String? _frameId;
  String get frameId => _frameId ?? '';
  bool hasFrameId() => _frameId != null;

  // "noOfPhases" field.
  int? _noOfPhases;
  int get noOfPhases => _noOfPhases ?? 0;
  bool hasNoOfPhases() => _noOfPhases != null;

  // "ambientTemp" field.
  double? _ambientTemp;
  double get ambientTemp => _ambientTemp ?? 0.0;
  bool hasAmbientTemp() => _ambientTemp != null;

  // "enclosure" field.
  String? _enclosure;
  String get enclosure => _enclosure ?? '';
  bool hasEnclosure() => _enclosure != null;

  // "specMetadata" field.
  String? _specMetadata;
  String get specMetadata => _specMetadata ?? '';
  bool hasSpecMetadata() => _specMetadata != null;

  // "lastUpdatedBy" field.
  DocumentReference? _lastUpdatedBy;
  DocumentReference? get lastUpdatedBy => _lastUpdatedBy;
  bool hasLastUpdatedBy() => _lastUpdatedBy != null;

  // "lastUpdatedAt" field.
  DateTime? _lastUpdatedAt;
  DateTime? get lastUpdatedAt => _lastUpdatedAt;
  bool hasLastUpdatedAt() => _lastUpdatedAt != null;

  // "searchableKeywords" field.
  List<String>? _searchableKeywords;
  List<String> get searchableKeywords => _searchableKeywords ?? const [];
  bool hasSearchableKeywords() => _searchableKeywords != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _shaftLenght = snapshotData['shaftLenght'] as bool?;
    _rotationDirection = snapshotData['rotationDirection'] as String?;
    _volt = castToType<int>(snapshotData['volt']);
    _amp = castToType<double>(snapshotData['amp']);
    _hp = castToType<double>(snapshotData['hp']);
    _rpm = castToType<int>(snapshotData['rpm']);
    _bodyDiameter = castToType<double>(snapshotData['bodyDiameter']);
    _bodyHeight = castToType<double>(snapshotData['bodyHeight']);
    _axleDiameter = castToType<double>(snapshotData['axleDiameter']);
    _capacitorMicroFarad =
        castToType<double>(snapshotData['capacitorMicroFarad']);
    _capacitorVolt = castToType<int>(snapshotData['capacitorVolt']);
    _noOfSpeeds = castToType<int>(snapshotData['noOfSpeeds']);
    _frameId = snapshotData['frameId'] as String?;
    _noOfPhases = castToType<int>(snapshotData['noOfPhases']);
    _ambientTemp = castToType<double>(snapshotData['ambientTemp']);
    _enclosure = snapshotData['enclosure'] as String?;
    _specMetadata = snapshotData['specMetadata'] as String?;
    _lastUpdatedBy = snapshotData['lastUpdatedBy'] as DocumentReference?;
    _lastUpdatedAt = snapshotData['lastUpdatedAt'] as DateTime?;
    _searchableKeywords = getDataList(snapshotData['searchableKeywords']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MotorSpec');

  static Stream<MotorSpecRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MotorSpecRecord.fromSnapshot(s));

  static Future<MotorSpecRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MotorSpecRecord.fromSnapshot(s));

  static MotorSpecRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MotorSpecRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MotorSpecRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MotorSpecRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MotorSpecRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MotorSpecRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMotorSpecRecordData({
  String? id,
  bool? shaftLenght,
  String? rotationDirection,
  int? volt,
  double? amp,
  double? hp,
  int? rpm,
  double? bodyDiameter,
  double? bodyHeight,
  double? axleDiameter,
  double? capacitorMicroFarad,
  int? capacitorVolt,
  int? noOfSpeeds,
  String? frameId,
  int? noOfPhases,
  double? ambientTemp,
  String? enclosure,
  String? specMetadata,
  DocumentReference? lastUpdatedBy,
  DateTime? lastUpdatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'shaftLenght': shaftLenght,
      'rotationDirection': rotationDirection,
      'volt': volt,
      'amp': amp,
      'hp': hp,
      'rpm': rpm,
      'bodyDiameter': bodyDiameter,
      'bodyHeight': bodyHeight,
      'axleDiameter': axleDiameter,
      'capacitorMicroFarad': capacitorMicroFarad,
      'capacitorVolt': capacitorVolt,
      'noOfSpeeds': noOfSpeeds,
      'frameId': frameId,
      'noOfPhases': noOfPhases,
      'ambientTemp': ambientTemp,
      'enclosure': enclosure,
      'specMetadata': specMetadata,
      'lastUpdatedBy': lastUpdatedBy,
      'lastUpdatedAt': lastUpdatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class MotorSpecRecordDocumentEquality implements Equality<MotorSpecRecord> {
  const MotorSpecRecordDocumentEquality();

  @override
  bool equals(MotorSpecRecord? e1, MotorSpecRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.shaftLenght == e2?.shaftLenght &&
        e1?.rotationDirection == e2?.rotationDirection &&
        e1?.volt == e2?.volt &&
        e1?.amp == e2?.amp &&
        e1?.hp == e2?.hp &&
        e1?.rpm == e2?.rpm &&
        e1?.bodyDiameter == e2?.bodyDiameter &&
        e1?.bodyHeight == e2?.bodyHeight &&
        e1?.axleDiameter == e2?.axleDiameter &&
        e1?.capacitorMicroFarad == e2?.capacitorMicroFarad &&
        e1?.capacitorVolt == e2?.capacitorVolt &&
        e1?.noOfSpeeds == e2?.noOfSpeeds &&
        e1?.frameId == e2?.frameId &&
        e1?.noOfPhases == e2?.noOfPhases &&
        e1?.ambientTemp == e2?.ambientTemp &&
        e1?.enclosure == e2?.enclosure &&
        e1?.specMetadata == e2?.specMetadata &&
        e1?.lastUpdatedBy == e2?.lastUpdatedBy &&
        e1?.lastUpdatedAt == e2?.lastUpdatedAt &&
        listEquality.equals(e1?.searchableKeywords, e2?.searchableKeywords);
  }

  @override
  int hash(MotorSpecRecord? e) => const ListEquality().hash([
        e?.id,
        e?.shaftLenght,
        e?.rotationDirection,
        e?.volt,
        e?.amp,
        e?.hp,
        e?.rpm,
        e?.bodyDiameter,
        e?.bodyHeight,
        e?.axleDiameter,
        e?.capacitorMicroFarad,
        e?.capacitorVolt,
        e?.noOfSpeeds,
        e?.frameId,
        e?.noOfPhases,
        e?.ambientTemp,
        e?.enclosure,
        e?.specMetadata,
        e?.lastUpdatedBy,
        e?.lastUpdatedAt,
        e?.searchableKeywords
      ]);

  @override
  bool isValidKey(Object? o) => o is MotorSpecRecord;
}

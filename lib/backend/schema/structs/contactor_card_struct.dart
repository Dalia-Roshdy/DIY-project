// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ContactorCardStruct extends FFFirebaseStruct {
  ContactorCardStruct({
    double? contCoilVolt,
    double? contratedAmp,
    double? contLength,
    double? contWidth,
    double? contDepth,
    int? contNumberOfPoles,
    String? contTerminalType,
    String? contDescription,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _contCoilVolt = contCoilVolt,
        _contratedAmp = contratedAmp,
        _contLength = contLength,
        _contWidth = contWidth,
        _contDepth = contDepth,
        _contNumberOfPoles = contNumberOfPoles,
        _contTerminalType = contTerminalType,
        _contDescription = contDescription,
        super(firestoreUtilData);

  // "contCoilVolt" field.
  double? _contCoilVolt;
  double get contCoilVolt => _contCoilVolt ?? 0.0;
  set contCoilVolt(double? val) => _contCoilVolt = val;

  void incrementContCoilVolt(double amount) =>
      contCoilVolt = contCoilVolt + amount;

  bool hasContCoilVolt() => _contCoilVolt != null;

  // "contratedAmp" field.
  double? _contratedAmp;
  double get contratedAmp => _contratedAmp ?? 0.0;
  set contratedAmp(double? val) => _contratedAmp = val;

  void incrementContratedAmp(double amount) =>
      contratedAmp = contratedAmp + amount;

  bool hasContratedAmp() => _contratedAmp != null;

  // "contLength" field.
  double? _contLength;
  double get contLength => _contLength ?? 0.0;
  set contLength(double? val) => _contLength = val;

  void incrementContLength(double amount) => contLength = contLength + amount;

  bool hasContLength() => _contLength != null;

  // "contWidth" field.
  double? _contWidth;
  double get contWidth => _contWidth ?? 0.0;
  set contWidth(double? val) => _contWidth = val;

  void incrementContWidth(double amount) => contWidth = contWidth + amount;

  bool hasContWidth() => _contWidth != null;

  // "contDepth" field.
  double? _contDepth;
  double get contDepth => _contDepth ?? 0.0;
  set contDepth(double? val) => _contDepth = val;

  void incrementContDepth(double amount) => contDepth = contDepth + amount;

  bool hasContDepth() => _contDepth != null;

  // "contNumberOfPoles" field.
  int? _contNumberOfPoles;
  int get contNumberOfPoles => _contNumberOfPoles ?? 0;
  set contNumberOfPoles(int? val) => _contNumberOfPoles = val;

  void incrementContNumberOfPoles(int amount) =>
      contNumberOfPoles = contNumberOfPoles + amount;

  bool hasContNumberOfPoles() => _contNumberOfPoles != null;

  // "contTerminalType" field.
  String? _contTerminalType;
  String get contTerminalType => _contTerminalType ?? '';
  set contTerminalType(String? val) => _contTerminalType = val;

  bool hasContTerminalType() => _contTerminalType != null;

  // "contDescription" field.
  String? _contDescription;
  String get contDescription => _contDescription ?? '';
  set contDescription(String? val) => _contDescription = val;

  bool hasContDescription() => _contDescription != null;

  static ContactorCardStruct fromMap(Map<String, dynamic> data) =>
      ContactorCardStruct(
        contCoilVolt: castToType<double>(data['contCoilVolt']),
        contratedAmp: castToType<double>(data['contratedAmp']),
        contLength: castToType<double>(data['contLength']),
        contWidth: castToType<double>(data['contWidth']),
        contDepth: castToType<double>(data['contDepth']),
        contNumberOfPoles: castToType<int>(data['contNumberOfPoles']),
        contTerminalType: data['contTerminalType'] as String?,
        contDescription: data['contDescription'] as String?,
      );

  static ContactorCardStruct? maybeFromMap(dynamic data) => data is Map
      ? ContactorCardStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'contCoilVolt': _contCoilVolt,
        'contratedAmp': _contratedAmp,
        'contLength': _contLength,
        'contWidth': _contWidth,
        'contDepth': _contDepth,
        'contNumberOfPoles': _contNumberOfPoles,
        'contTerminalType': _contTerminalType,
        'contDescription': _contDescription,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'contCoilVolt': serializeParam(
          _contCoilVolt,
          ParamType.double,
        ),
        'contratedAmp': serializeParam(
          _contratedAmp,
          ParamType.double,
        ),
        'contLength': serializeParam(
          _contLength,
          ParamType.double,
        ),
        'contWidth': serializeParam(
          _contWidth,
          ParamType.double,
        ),
        'contDepth': serializeParam(
          _contDepth,
          ParamType.double,
        ),
        'contNumberOfPoles': serializeParam(
          _contNumberOfPoles,
          ParamType.int,
        ),
        'contTerminalType': serializeParam(
          _contTerminalType,
          ParamType.String,
        ),
        'contDescription': serializeParam(
          _contDescription,
          ParamType.String,
        ),
      }.withoutNulls;

  static ContactorCardStruct fromSerializableMap(Map<String, dynamic> data) =>
      ContactorCardStruct(
        contCoilVolt: deserializeParam(
          data['contCoilVolt'],
          ParamType.double,
          false,
        ),
        contratedAmp: deserializeParam(
          data['contratedAmp'],
          ParamType.double,
          false,
        ),
        contLength: deserializeParam(
          data['contLength'],
          ParamType.double,
          false,
        ),
        contWidth: deserializeParam(
          data['contWidth'],
          ParamType.double,
          false,
        ),
        contDepth: deserializeParam(
          data['contDepth'],
          ParamType.double,
          false,
        ),
        contNumberOfPoles: deserializeParam(
          data['contNumberOfPoles'],
          ParamType.int,
          false,
        ),
        contTerminalType: deserializeParam(
          data['contTerminalType'],
          ParamType.String,
          false,
        ),
        contDescription: deserializeParam(
          data['contDescription'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ContactorCardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ContactorCardStruct &&
        contCoilVolt == other.contCoilVolt &&
        contratedAmp == other.contratedAmp &&
        contLength == other.contLength &&
        contWidth == other.contWidth &&
        contDepth == other.contDepth &&
        contNumberOfPoles == other.contNumberOfPoles &&
        contTerminalType == other.contTerminalType &&
        contDescription == other.contDescription;
  }

  @override
  int get hashCode => const ListEquality().hash([
        contCoilVolt,
        contratedAmp,
        contLength,
        contWidth,
        contDepth,
        contNumberOfPoles,
        contTerminalType,
        contDescription
      ]);
}

ContactorCardStruct createContactorCardStruct({
  double? contCoilVolt,
  double? contratedAmp,
  double? contLength,
  double? contWidth,
  double? contDepth,
  int? contNumberOfPoles,
  String? contTerminalType,
  String? contDescription,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ContactorCardStruct(
      contCoilVolt: contCoilVolt,
      contratedAmp: contratedAmp,
      contLength: contLength,
      contWidth: contWidth,
      contDepth: contDepth,
      contNumberOfPoles: contNumberOfPoles,
      contTerminalType: contTerminalType,
      contDescription: contDescription,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ContactorCardStruct? updateContactorCardStruct(
  ContactorCardStruct? contactorCard, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    contactorCard
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addContactorCardStructData(
  Map<String, dynamic> firestoreData,
  ContactorCardStruct? contactorCard,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (contactorCard == null) {
    return;
  }
  if (contactorCard.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && contactorCard.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final contactorCardData =
      getContactorCardFirestoreData(contactorCard, forFieldValue);
  final nestedData =
      contactorCardData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = contactorCard.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getContactorCardFirestoreData(
  ContactorCardStruct? contactorCard, [
  bool forFieldValue = false,
]) {
  if (contactorCard == null) {
    return {};
  }
  final firestoreData = mapToFirestore(contactorCard.toMap());

  // Add any Firestore field values
  mapToFirestore(contactorCard.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getContactorCardListFirestoreData(
  List<ContactorCardStruct>? contactorCards,
) =>
    contactorCards
        ?.map((e) => getContactorCardFirestoreData(e, true))
        .toList() ??
    [];

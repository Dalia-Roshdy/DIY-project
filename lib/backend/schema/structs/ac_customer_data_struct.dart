// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AcCustomerDataStruct extends FFFirebaseStruct {
  AcCustomerDataStruct({
    String? acMake,
    String? acModel,
    String? serialNumber,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _acMake = acMake,
        _acModel = acModel,
        _serialNumber = serialNumber,
        super(firestoreUtilData);

  // "acMake" field.
  String? _acMake;
  String get acMake => _acMake ?? '';
  set acMake(String? val) => _acMake = val;

  bool hasAcMake() => _acMake != null;

  // "acModel" field.
  String? _acModel;
  String get acModel => _acModel ?? '';
  set acModel(String? val) => _acModel = val;

  bool hasAcModel() => _acModel != null;

  // "serialNumber" field.
  String? _serialNumber;
  String get serialNumber => _serialNumber ?? '';
  set serialNumber(String? val) => _serialNumber = val;

  bool hasSerialNumber() => _serialNumber != null;

  static AcCustomerDataStruct fromMap(Map<String, dynamic> data) =>
      AcCustomerDataStruct(
        acMake: data['acMake'] as String?,
        acModel: data['acModel'] as String?,
        serialNumber: data['serialNumber'] as String?,
      );

  static AcCustomerDataStruct? maybeFromMap(dynamic data) => data is Map
      ? AcCustomerDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'acMake': _acMake,
        'acModel': _acModel,
        'serialNumber': _serialNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'acMake': serializeParam(
          _acMake,
          ParamType.String,
        ),
        'acModel': serializeParam(
          _acModel,
          ParamType.String,
        ),
        'serialNumber': serializeParam(
          _serialNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static AcCustomerDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      AcCustomerDataStruct(
        acMake: deserializeParam(
          data['acMake'],
          ParamType.String,
          false,
        ),
        acModel: deserializeParam(
          data['acModel'],
          ParamType.String,
          false,
        ),
        serialNumber: deserializeParam(
          data['serialNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AcCustomerDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AcCustomerDataStruct &&
        acMake == other.acMake &&
        acModel == other.acModel &&
        serialNumber == other.serialNumber;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([acMake, acModel, serialNumber]);
}

AcCustomerDataStruct createAcCustomerDataStruct({
  String? acMake,
  String? acModel,
  String? serialNumber,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AcCustomerDataStruct(
      acMake: acMake,
      acModel: acModel,
      serialNumber: serialNumber,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AcCustomerDataStruct? updateAcCustomerDataStruct(
  AcCustomerDataStruct? acCustomerData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    acCustomerData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAcCustomerDataStructData(
  Map<String, dynamic> firestoreData,
  AcCustomerDataStruct? acCustomerData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (acCustomerData == null) {
    return;
  }
  if (acCustomerData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && acCustomerData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final acCustomerDataData =
      getAcCustomerDataFirestoreData(acCustomerData, forFieldValue);
  final nestedData =
      acCustomerDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = acCustomerData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAcCustomerDataFirestoreData(
  AcCustomerDataStruct? acCustomerData, [
  bool forFieldValue = false,
]) {
  if (acCustomerData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(acCustomerData.toMap());

  // Add any Firestore field values
  mapToFirestore(acCustomerData.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAcCustomerDataListFirestoreData(
  List<AcCustomerDataStruct>? acCustomerDatas,
) =>
    acCustomerDatas
        ?.map((e) => getAcCustomerDataFirestoreData(e, true))
        .toList() ??
    [];

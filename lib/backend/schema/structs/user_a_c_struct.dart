// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserACStruct extends FFFirebaseStruct {
  UserACStruct({
    DocumentReference? acMake,
    DocumentReference? acModel,
    String? serialNumber,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _acMake = acMake,
        _acModel = acModel,
        _serialNumber = serialNumber,
        super(firestoreUtilData);

  // "acMake" field.
  DocumentReference? _acMake;
  DocumentReference? get acMake => _acMake;
  set acMake(DocumentReference? val) => _acMake = val;

  bool hasAcMake() => _acMake != null;

  // "acModel" field.
  DocumentReference? _acModel;
  DocumentReference? get acModel => _acModel;
  set acModel(DocumentReference? val) => _acModel = val;

  bool hasAcModel() => _acModel != null;

  // "serialNumber" field.
  String? _serialNumber;
  String get serialNumber => _serialNumber ?? '';
  set serialNumber(String? val) => _serialNumber = val;

  bool hasSerialNumber() => _serialNumber != null;

  static UserACStruct fromMap(Map<String, dynamic> data) => UserACStruct(
        acMake: data['acMake'] as DocumentReference?,
        acModel: data['acModel'] as DocumentReference?,
        serialNumber: data['serialNumber'] as String?,
      );

  static UserACStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserACStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'acMake': _acMake,
        'acModel': _acModel,
        'serialNumber': _serialNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'acMake': serializeParam(
          _acMake,
          ParamType.DocumentReference,
        ),
        'acModel': serializeParam(
          _acModel,
          ParamType.DocumentReference,
        ),
        'serialNumber': serializeParam(
          _serialNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserACStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserACStruct(
        acMake: deserializeParam(
          data['acMake'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['ACMake'],
        ),
        acModel: deserializeParam(
          data['acModel'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['ACModel'],
        ),
        serialNumber: deserializeParam(
          data['serialNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserACStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserACStruct &&
        acMake == other.acMake &&
        acModel == other.acModel &&
        serialNumber == other.serialNumber;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([acMake, acModel, serialNumber]);
}

UserACStruct createUserACStruct({
  DocumentReference? acMake,
  DocumentReference? acModel,
  String? serialNumber,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserACStruct(
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

UserACStruct? updateUserACStruct(
  UserACStruct? userAC, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userAC
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserACStructData(
  Map<String, dynamic> firestoreData,
  UserACStruct? userAC,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userAC == null) {
    return;
  }
  if (userAC.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userAC.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userACData = getUserACFirestoreData(userAC, forFieldValue);
  final nestedData = userACData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userAC.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserACFirestoreData(
  UserACStruct? userAC, [
  bool forFieldValue = false,
]) {
  if (userAC == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userAC.toMap());

  // Add any Firestore field values
  mapToFirestore(userAC.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserACListFirestoreData(
  List<UserACStruct>? userACs,
) =>
    userACs?.map((e) => getUserACFirestoreData(e, true)).toList() ?? [];

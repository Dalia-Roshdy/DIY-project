// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AcModelDTOStruct extends FFFirebaseStruct {
  AcModelDTOStruct({
    DocumentReference? id,
    DocumentReference? acMakeId,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _acMakeId = acMakeId,
        _name = name,
        super(firestoreUtilData);

  // "id" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "acMakeId" field.
  DocumentReference? _acMakeId;
  DocumentReference? get acMakeId => _acMakeId;
  set acMakeId(DocumentReference? val) => _acMakeId = val;

  bool hasAcMakeId() => _acMakeId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static AcModelDTOStruct fromMap(Map<String, dynamic> data) =>
      AcModelDTOStruct(
        id: data['id'] as DocumentReference?,
        acMakeId: data['acMakeId'] as DocumentReference?,
        name: data['name'] as String?,
      );

  static AcModelDTOStruct? maybeFromMap(dynamic data) => data is Map
      ? AcModelDTOStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'acMakeId': _acMakeId,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.DocumentReference,
        ),
        'acMakeId': serializeParam(
          _acMakeId,
          ParamType.DocumentReference,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static AcModelDTOStruct fromSerializableMap(Map<String, dynamic> data) =>
      AcModelDTOStruct(
        id: deserializeParam(
          data['id'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['ACModel'],
        ),
        acMakeId: deserializeParam(
          data['acMakeId'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['ACMake'],
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AcModelDTOStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AcModelDTOStruct &&
        id == other.id &&
        acMakeId == other.acMakeId &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([id, acMakeId, name]);
}

AcModelDTOStruct createAcModelDTOStruct({
  DocumentReference? id,
  DocumentReference? acMakeId,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AcModelDTOStruct(
      id: id,
      acMakeId: acMakeId,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AcModelDTOStruct? updateAcModelDTOStruct(
  AcModelDTOStruct? acModelDTO, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    acModelDTO
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAcModelDTOStructData(
  Map<String, dynamic> firestoreData,
  AcModelDTOStruct? acModelDTO,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (acModelDTO == null) {
    return;
  }
  if (acModelDTO.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && acModelDTO.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final acModelDTOData = getAcModelDTOFirestoreData(acModelDTO, forFieldValue);
  final nestedData = acModelDTOData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = acModelDTO.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAcModelDTOFirestoreData(
  AcModelDTOStruct? acModelDTO, [
  bool forFieldValue = false,
]) {
  if (acModelDTO == null) {
    return {};
  }
  final firestoreData = mapToFirestore(acModelDTO.toMap());

  // Add any Firestore field values
  mapToFirestore(acModelDTO.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAcModelDTOListFirestoreData(
  List<AcModelDTOStruct>? acModelDTOs,
) =>
    acModelDTOs?.map((e) => getAcModelDTOFirestoreData(e, true)).toList() ?? [];

// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PartCardDTOStruct extends FFFirebaseStruct {
  PartCardDTOStruct({
    /// item id
    String? id,
    String? type,
    String? title,
    String? desc,
    double? price,
    int? rpm,
    int? volt,
    List<String>? image,
    double? ratedVolt,
    double? ratedAmp,
    double? mfd1,
    double? mfd2,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _type = type,
        _title = title,
        _desc = desc,
        _price = price,
        _rpm = rpm,
        _volt = volt,
        _image = image,
        _ratedVolt = ratedVolt,
        _ratedAmp = ratedAmp,
        _mfd1 = mfd1,
        _mfd2 = mfd2,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;

  bool hasDesc() => _desc != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "rpm" field.
  int? _rpm;
  int get rpm => _rpm ?? 0;
  set rpm(int? val) => _rpm = val;

  void incrementRpm(int amount) => rpm = rpm + amount;

  bool hasRpm() => _rpm != null;

  // "volt" field.
  int? _volt;
  int get volt => _volt ?? 0;
  set volt(int? val) => _volt = val;

  void incrementVolt(int amount) => volt = volt + amount;

  bool hasVolt() => _volt != null;

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  set image(List<String>? val) => _image = val;

  void updateImage(Function(List<String>) updateFn) {
    updateFn(_image ??= []);
  }

  bool hasImage() => _image != null;

  // "ratedVolt" field.
  double? _ratedVolt;
  double get ratedVolt => _ratedVolt ?? 0.0;
  set ratedVolt(double? val) => _ratedVolt = val;

  void incrementRatedVolt(double amount) => ratedVolt = ratedVolt + amount;

  bool hasRatedVolt() => _ratedVolt != null;

  // "ratedAmp" field.
  double? _ratedAmp;
  double get ratedAmp => _ratedAmp ?? 0.0;
  set ratedAmp(double? val) => _ratedAmp = val;

  void incrementRatedAmp(double amount) => ratedAmp = ratedAmp + amount;

  bool hasRatedAmp() => _ratedAmp != null;

  // "mfd1" field.
  double? _mfd1;
  double get mfd1 => _mfd1 ?? 0.0;
  set mfd1(double? val) => _mfd1 = val;

  void incrementMfd1(double amount) => mfd1 = mfd1 + amount;

  bool hasMfd1() => _mfd1 != null;

  // "mfd2" field.
  double? _mfd2;
  double get mfd2 => _mfd2 ?? 0.0;
  set mfd2(double? val) => _mfd2 = val;

  void incrementMfd2(double amount) => mfd2 = mfd2 + amount;

  bool hasMfd2() => _mfd2 != null;

  static PartCardDTOStruct fromMap(Map<String, dynamic> data) =>
      PartCardDTOStruct(
        id: data['id'] as String?,
        type: data['type'] as String?,
        title: data['title'] as String?,
        desc: data['desc'] as String?,
        price: castToType<double>(data['price']),
        rpm: castToType<int>(data['rpm']),
        volt: castToType<int>(data['volt']),
        image: getDataList(data['image']),
        ratedVolt: castToType<double>(data['ratedVolt']),
        ratedAmp: castToType<double>(data['ratedAmp']),
        mfd1: castToType<double>(data['mfd1']),
        mfd2: castToType<double>(data['mfd2']),
      );

  static PartCardDTOStruct? maybeFromMap(dynamic data) => data is Map
      ? PartCardDTOStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'type': _type,
        'title': _title,
        'desc': _desc,
        'price': _price,
        'rpm': _rpm,
        'volt': _volt,
        'image': _image,
        'ratedVolt': _ratedVolt,
        'ratedAmp': _ratedAmp,
        'mfd1': _mfd1,
        'mfd2': _mfd2,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'rpm': serializeParam(
          _rpm,
          ParamType.int,
        ),
        'volt': serializeParam(
          _volt,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
          isList: true,
        ),
        'ratedVolt': serializeParam(
          _ratedVolt,
          ParamType.double,
        ),
        'ratedAmp': serializeParam(
          _ratedAmp,
          ParamType.double,
        ),
        'mfd1': serializeParam(
          _mfd1,
          ParamType.double,
        ),
        'mfd2': serializeParam(
          _mfd2,
          ParamType.double,
        ),
      }.withoutNulls;

  static PartCardDTOStruct fromSerializableMap(Map<String, dynamic> data) =>
      PartCardDTOStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        rpm: deserializeParam(
          data['rpm'],
          ParamType.int,
          false,
        ),
        volt: deserializeParam(
          data['volt'],
          ParamType.int,
          false,
        ),
        image: deserializeParam<String>(
          data['image'],
          ParamType.String,
          true,
        ),
        ratedVolt: deserializeParam(
          data['ratedVolt'],
          ParamType.double,
          false,
        ),
        ratedAmp: deserializeParam(
          data['ratedAmp'],
          ParamType.double,
          false,
        ),
        mfd1: deserializeParam(
          data['mfd1'],
          ParamType.double,
          false,
        ),
        mfd2: deserializeParam(
          data['mfd2'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PartCardDTOStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PartCardDTOStruct &&
        id == other.id &&
        type == other.type &&
        title == other.title &&
        desc == other.desc &&
        price == other.price &&
        rpm == other.rpm &&
        volt == other.volt &&
        listEquality.equals(image, other.image) &&
        ratedVolt == other.ratedVolt &&
        ratedAmp == other.ratedAmp &&
        mfd1 == other.mfd1 &&
        mfd2 == other.mfd2;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        type,
        title,
        desc,
        price,
        rpm,
        volt,
        image,
        ratedVolt,
        ratedAmp,
        mfd1,
        mfd2
      ]);
}

PartCardDTOStruct createPartCardDTOStruct({
  String? id,
  String? type,
  String? title,
  String? desc,
  double? price,
  int? rpm,
  int? volt,
  double? ratedVolt,
  double? ratedAmp,
  double? mfd1,
  double? mfd2,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PartCardDTOStruct(
      id: id,
      type: type,
      title: title,
      desc: desc,
      price: price,
      rpm: rpm,
      volt: volt,
      ratedVolt: ratedVolt,
      ratedAmp: ratedAmp,
      mfd1: mfd1,
      mfd2: mfd2,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PartCardDTOStruct? updatePartCardDTOStruct(
  PartCardDTOStruct? partCardDTO, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    partCardDTO
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPartCardDTOStructData(
  Map<String, dynamic> firestoreData,
  PartCardDTOStruct? partCardDTO,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (partCardDTO == null) {
    return;
  }
  if (partCardDTO.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && partCardDTO.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final partCardDTOData =
      getPartCardDTOFirestoreData(partCardDTO, forFieldValue);
  final nestedData =
      partCardDTOData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = partCardDTO.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPartCardDTOFirestoreData(
  PartCardDTOStruct? partCardDTO, [
  bool forFieldValue = false,
]) {
  if (partCardDTO == null) {
    return {};
  }
  final firestoreData = mapToFirestore(partCardDTO.toMap());

  // Add any Firestore field values
  mapToFirestore(partCardDTO.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPartCardDTOListFirestoreData(
  List<PartCardDTOStruct>? partCardDTOs,
) =>
    partCardDTOs?.map((e) => getPartCardDTOFirestoreData(e, true)).toList() ??
    [];

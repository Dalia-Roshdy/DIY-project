// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CartSettingStruct extends FFFirebaseStruct {
  CartSettingStruct({
    String? tax,
    String? shipping,
    String? motorSLFees,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tax = tax,
        _shipping = shipping,
        _motorSLFees = motorSLFees,
        super(firestoreUtilData);

  // "tax" field.
  String? _tax;
  String get tax => _tax ?? '';
  set tax(String? val) => _tax = val;

  bool hasTax() => _tax != null;

  // "shipping" field.
  String? _shipping;
  String get shipping => _shipping ?? '';
  set shipping(String? val) => _shipping = val;

  bool hasShipping() => _shipping != null;

  // "motorSLFees" field.
  String? _motorSLFees;
  String get motorSLFees => _motorSLFees ?? '';
  set motorSLFees(String? val) => _motorSLFees = val;

  bool hasMotorSLFees() => _motorSLFees != null;

  static CartSettingStruct fromMap(Map<String, dynamic> data) =>
      CartSettingStruct(
        tax: data['tax'] as String?,
        shipping: data['shipping'] as String?,
        motorSLFees: data['motorSLFees'] as String?,
      );

  static CartSettingStruct? maybeFromMap(dynamic data) => data is Map
      ? CartSettingStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tax': _tax,
        'shipping': _shipping,
        'motorSLFees': _motorSLFees,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tax': serializeParam(
          _tax,
          ParamType.String,
        ),
        'shipping': serializeParam(
          _shipping,
          ParamType.String,
        ),
        'motorSLFees': serializeParam(
          _motorSLFees,
          ParamType.String,
        ),
      }.withoutNulls;

  static CartSettingStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartSettingStruct(
        tax: deserializeParam(
          data['tax'],
          ParamType.String,
          false,
        ),
        shipping: deserializeParam(
          data['shipping'],
          ParamType.String,
          false,
        ),
        motorSLFees: deserializeParam(
          data['motorSLFees'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CartSettingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartSettingStruct &&
        tax == other.tax &&
        shipping == other.shipping &&
        motorSLFees == other.motorSLFees;
  }

  @override
  int get hashCode => const ListEquality().hash([tax, shipping, motorSLFees]);
}

CartSettingStruct createCartSettingStruct({
  String? tax,
  String? shipping,
  String? motorSLFees,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartSettingStruct(
      tax: tax,
      shipping: shipping,
      motorSLFees: motorSLFees,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartSettingStruct? updateCartSettingStruct(
  CartSettingStruct? cartSetting, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartSetting
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartSettingStructData(
  Map<String, dynamic> firestoreData,
  CartSettingStruct? cartSetting,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartSetting == null) {
    return;
  }
  if (cartSetting.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cartSetting.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartSettingData =
      getCartSettingFirestoreData(cartSetting, forFieldValue);
  final nestedData =
      cartSettingData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cartSetting.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartSettingFirestoreData(
  CartSettingStruct? cartSetting, [
  bool forFieldValue = false,
]) {
  if (cartSetting == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartSetting.toMap());

  // Add any Firestore field values
  mapToFirestore(cartSetting.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartSettingListFirestoreData(
  List<CartSettingStruct>? cartSettings,
) =>
    cartSettings?.map((e) => getCartSettingFirestoreData(e, true)).toList() ??
    [];

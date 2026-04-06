// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CustomerStruct extends FFFirebaseStruct {
  CustomerStruct({
    String? email,
    String? phone,
    String? shippingAddress,
    String? billingAddress,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _email = email,
        _phone = phone,
        _shippingAddress = shippingAddress,
        _billingAddress = billingAddress,
        super(firestoreUtilData);

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "shippingAddress" field.
  String? _shippingAddress;
  String get shippingAddress => _shippingAddress ?? '';
  set shippingAddress(String? val) => _shippingAddress = val;

  bool hasShippingAddress() => _shippingAddress != null;

  // "billingAddress" field.
  String? _billingAddress;
  String get billingAddress => _billingAddress ?? '';
  set billingAddress(String? val) => _billingAddress = val;

  bool hasBillingAddress() => _billingAddress != null;

  static CustomerStruct fromMap(Map<String, dynamic> data) => CustomerStruct(
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        shippingAddress: data['shippingAddress'] as String?,
        billingAddress: data['billingAddress'] as String?,
      );

  static CustomerStruct? maybeFromMap(dynamic data) =>
      data is Map ? CustomerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'phone': _phone,
        'shippingAddress': _shippingAddress,
        'billingAddress': _billingAddress,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'shippingAddress': serializeParam(
          _shippingAddress,
          ParamType.String,
        ),
        'billingAddress': serializeParam(
          _billingAddress,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustomerStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        shippingAddress: deserializeParam(
          data['shippingAddress'],
          ParamType.String,
          false,
        ),
        billingAddress: deserializeParam(
          data['billingAddress'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CustomerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerStruct &&
        email == other.email &&
        phone == other.phone &&
        shippingAddress == other.shippingAddress &&
        billingAddress == other.billingAddress;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([email, phone, shippingAddress, billingAddress]);
}

CustomerStruct createCustomerStruct({
  String? email,
  String? phone,
  String? shippingAddress,
  String? billingAddress,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CustomerStruct(
      email: email,
      phone: phone,
      shippingAddress: shippingAddress,
      billingAddress: billingAddress,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CustomerStruct? updateCustomerStruct(
  CustomerStruct? customer, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    customer
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCustomerStructData(
  Map<String, dynamic> firestoreData,
  CustomerStruct? customer,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (customer == null) {
    return;
  }
  if (customer.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && customer.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final customerData = getCustomerFirestoreData(customer, forFieldValue);
  final nestedData = customerData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = customer.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCustomerFirestoreData(
  CustomerStruct? customer, [
  bool forFieldValue = false,
]) {
  if (customer == null) {
    return {};
  }
  final firestoreData = mapToFirestore(customer.toMap());

  // Add any Firestore field values
  mapToFirestore(customer.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCustomerListFirestoreData(
  List<CustomerStruct>? customers,
) =>
    customers?.map((e) => getCustomerFirestoreData(e, true)).toList() ?? [];

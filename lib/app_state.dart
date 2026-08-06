import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_Cart')) {
        try {
          final serializedData = prefs.getString('ff_Cart') ?? '{}';
          _Cart = CartStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_User')) {
        try {
          final serializedData = prefs.getString('ff_User') ?? '{}';
          _User = UserAppStateStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_acCustomer')) {
        try {
          final serializedData = prefs.getString('ff_acCustomer') ?? '{}';
          _acCustomer = AcCustomerDataStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_CartSetting')) {
        try {
          final serializedData = prefs.getString('ff_CartSetting') ?? '{}';
          _CartSetting =
              CartSettingStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<AcMakeDTOStruct> _acMakeList = [];
  List<AcMakeDTOStruct> get acMakeList => _acMakeList;
  set acMakeList(List<AcMakeDTOStruct> value) {
    _acMakeList = value;
  }

  void addToAcMakeList(AcMakeDTOStruct value) {
    acMakeList.add(value);
  }

  void removeFromAcMakeList(AcMakeDTOStruct value) {
    acMakeList.remove(value);
  }

  void removeAtIndexFromAcMakeList(int index) {
    acMakeList.removeAt(index);
  }

  void updateAcMakeListAtIndex(
    int index,
    AcMakeDTOStruct Function(AcMakeDTOStruct) updateFn,
  ) {
    acMakeList[index] = updateFn(_acMakeList[index]);
  }

  void insertAtIndexInAcMakeList(int index, AcMakeDTOStruct value) {
    acMakeList.insert(index, value);
  }

  List<AcModelDTOStruct> _acModelList = [];
  List<AcModelDTOStruct> get acModelList => _acModelList;
  set acModelList(List<AcModelDTOStruct> value) {
    _acModelList = value;
  }

  void addToAcModelList(AcModelDTOStruct value) {
    acModelList.add(value);
  }

  void removeFromAcModelList(AcModelDTOStruct value) {
    acModelList.remove(value);
  }

  void removeAtIndexFromAcModelList(int index) {
    acModelList.removeAt(index);
  }

  void updateAcModelListAtIndex(
    int index,
    AcModelDTOStruct Function(AcModelDTOStruct) updateFn,
  ) {
    acModelList[index] = updateFn(_acModelList[index]);
  }

  void insertAtIndexInAcModelList(int index, AcModelDTOStruct value) {
    acModelList.insert(index, value);
  }

  UserACStruct _userAC = UserACStruct();
  UserACStruct get userAC => _userAC;
  set userAC(UserACStruct value) {
    _userAC = value;
  }

  void updateUserACStruct(Function(UserACStruct) updateFn) {
    updateFn(_userAC);
  }

  CartStruct _Cart = CartStruct();
  CartStruct get Cart => _Cart;
  set Cart(CartStruct value) {
    _Cart = value;
    prefs.setString('ff_Cart', value.serialize());
  }

  void updateCartStruct(Function(CartStruct) updateFn) {
    updateFn(_Cart);
    prefs.setString('ff_Cart', _Cart.serialize());
  }

  UserAppStateStruct _User = UserAppStateStruct();
  UserAppStateStruct get User => _User;
  set User(UserAppStateStruct value) {
    _User = value;
    prefs.setString('ff_User', value.serialize());
  }

  void updateUserStruct(Function(UserAppStateStruct) updateFn) {
    updateFn(_User);
    prefs.setString('ff_User', _User.serialize());
  }

  AcCustomerDataStruct _acCustomer = AcCustomerDataStruct();
  AcCustomerDataStruct get acCustomer => _acCustomer;
  set acCustomer(AcCustomerDataStruct value) {
    _acCustomer = value;
    prefs.setString('ff_acCustomer', value.serialize());
  }

  void updateAcCustomerStruct(Function(AcCustomerDataStruct) updateFn) {
    updateFn(_acCustomer);
    prefs.setString('ff_acCustomer', _acCustomer.serialize());
  }

  CartSettingStruct _CartSetting = CartSettingStruct();
  CartSettingStruct get CartSetting => _CartSetting;
  set CartSetting(CartSettingStruct value) {
    _CartSetting = value;
    prefs.setString('ff_CartSetting', value.serialize());
  }

  void updateCartSettingStruct(Function(CartSettingStruct) updateFn) {
    updateFn(_CartSetting);
    prefs.setString('ff_CartSetting', _CartSetting.serialize());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

import '/backend/backend.dart';
import '/components/button39_widget.dart';
import '/components/order_card2_widget.dart';
import '/components/text_field21_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'track_and_find_my_order_mobile_widget.dart'
    show TrackAndFindMyOrderMobileWidget;
import 'package:flutter/material.dart';

class TrackAndFindMyOrderMobileModel
    extends FlutterFlowModel<TrackAndFindMyOrderMobileWidget> {
  ///  Local state fields for this component.

  bool zeroResult = false;

  List<OrdersRecord> orderList = [];
  void addToOrderList(OrdersRecord item) => orderList.add(item);
  void removeFromOrderList(OrdersRecord item) => orderList.remove(item);
  void removeAtIndexFromOrderList(int index) => orderList.removeAt(index);
  void insertAtIndexInOrderList(int index, OrdersRecord item) =>
      orderList.insert(index, item);
  void updateOrderListAtIndex(int index, Function(OrdersRecord) updateFn) =>
      orderList[index] = updateFn(orderList[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for TextField.
  late TextField21Model textFieldModel1;
  // Model for TextField.
  late TextField21Model textFieldModel2;
  // Model for TextField.
  late TextField21Model textFieldModel3;
  // Model for Button.
  late Button39Model buttonModel1;
  // Model for OrderCard.
  late OrderCard2Model orderCardModel;
  // Model for Button.
  late Button39Model buttonModel2;
  // Model for Button.
  late Button39Model buttonModel3;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextField21Model());
    textFieldModel2 = createModel(context, () => TextField21Model());
    textFieldModel3 = createModel(context, () => TextField21Model());
    buttonModel1 = createModel(context, () => Button39Model());
    orderCardModel = createModel(context, () => OrderCard2Model());
    buttonModel2 = createModel(context, () => Button39Model());
    buttonModel3 = createModel(context, () => Button39Model());
    textFieldModel1.inputTextControllerValidator = _formTextFieldValidator1;
    textFieldModel2.inputTextControllerValidator = _formTextFieldValidator2;
    textFieldModel3.inputTextControllerValidator = _formTextFieldValidator3;
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    buttonModel1.dispose();
    orderCardModel.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone is required';
    }

    return null;
  }

  String? _formTextFieldValidator3(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'PIN is required';
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }
    if (val.length > 4) {
      return 'Maximum 4 characters allowed, currently ${val.length}.';
    }

    return null;
  }
}

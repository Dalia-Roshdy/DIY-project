import '/components/button35_widget.dart';
import '/components/order_summary_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_success_widget.dart' show OrderSuccessWidget;
import 'package:flutter/material.dart';

class OrderSuccessModel extends FlutterFlowModel<OrderSuccessWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for OrderSummaryItem.
  late OrderSummaryItemModel orderSummaryItemModel1;
  // Model for OrderSummaryItem.
  late OrderSummaryItemModel orderSummaryItemModel2;
  // Model for OrderSummaryItem.
  late OrderSummaryItemModel orderSummaryItemModel3;
  // Model for Button.
  late Button35Model buttonModel1;
  // Model for Button.
  late Button35Model buttonModel2;

  @override
  void initState(BuildContext context) {
    orderSummaryItemModel1 =
        createModel(context, () => OrderSummaryItemModel());
    orderSummaryItemModel2 =
        createModel(context, () => OrderSummaryItemModel());
    orderSummaryItemModel3 =
        createModel(context, () => OrderSummaryItemModel());
    buttonModel1 = createModel(context, () => Button35Model());
    buttonModel2 = createModel(context, () => Button35Model());
  }

  @override
  void dispose() {
    orderSummaryItemModel1.dispose();
    orderSummaryItemModel2.dispose();
    orderSummaryItemModel3.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}

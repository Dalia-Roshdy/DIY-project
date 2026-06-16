import '/components/button38_widget.dart';
import '/components/order_card_widget.dart';
import '/components/text_field18_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_screen1_widget.dart' show NewScreen1Widget;
import 'package:flutter/material.dart';

class NewScreen1Model extends FlutterFlowModel<NewScreen1Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField18Model textFieldModel1;
  // Model for TextField.
  late TextField18Model textFieldModel2;
  // Model for TextField.
  late TextField18Model textFieldModel3;
  // Model for Button.
  late Button38Model buttonModel1;
  // Model for OrderCard.
  late OrderCardModel orderCardModel1;
  // Model for OrderCard.
  late OrderCardModel orderCardModel2;
  // Model for Button.
  late Button38Model buttonModel2;
  // Model for Button.
  late Button38Model buttonModel3;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextField18Model());
    textFieldModel2 = createModel(context, () => TextField18Model());
    textFieldModel3 = createModel(context, () => TextField18Model());
    buttonModel1 = createModel(context, () => Button38Model());
    orderCardModel1 = createModel(context, () => OrderCardModel());
    orderCardModel2 = createModel(context, () => OrderCardModel());
    buttonModel2 = createModel(context, () => Button38Model());
    buttonModel3 = createModel(context, () => Button38Model());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    buttonModel1.dispose();
    orderCardModel1.dispose();
    orderCardModel2.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
  }
}

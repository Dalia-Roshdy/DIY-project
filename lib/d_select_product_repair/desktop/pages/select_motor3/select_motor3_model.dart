import '/d_select_product_repair/desktop/components/components/button4/button4_widget.dart';
import '/d_select_product_repair/desktop/components/components/filter_item5/filter_item5_widget.dart';
import '/d_select_product_repair/desktop/components/components/motor_card3/motor_card3_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'select_motor3_widget.dart' show SelectMotor3Widget;
import 'package:flutter/material.dart';

class SelectMotor3Model extends FlutterFlowModel<SelectMotor3Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for FilterItem.
  late FilterItem5Model filterItemModel1;
  // Model for FilterItem.
  late FilterItem5Model filterItemModel2;
  // Model for FilterItem.
  late FilterItem5Model filterItemModel3;
  // Model for FilterItem.
  late FilterItem5Model filterItemModel4;
  // Model for FilterItem.
  late FilterItem5Model filterItemModel5;
  // Model for Button.
  late Button4Model buttonModel1;
  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Model for MotorCard.
  late MotorCard3Model motorCardModel1;
  // Model for MotorCard.
  late MotorCard3Model motorCardModel2;
  // Model for MotorCard.
  late MotorCard3Model motorCardModel3;
  // Model for Button.
  late Button4Model buttonModel2;
  // Model for Button.
  late Button4Model buttonModel3;

  @override
  void initState(BuildContext context) {
    filterItemModel1 = createModel(context, () => FilterItem5Model());
    filterItemModel2 = createModel(context, () => FilterItem5Model());
    filterItemModel3 = createModel(context, () => FilterItem5Model());
    filterItemModel4 = createModel(context, () => FilterItem5Model());
    filterItemModel5 = createModel(context, () => FilterItem5Model());
    buttonModel1 = createModel(context, () => Button4Model());
    motorCardModel1 = createModel(context, () => MotorCard3Model());
    motorCardModel2 = createModel(context, () => MotorCard3Model());
    motorCardModel3 = createModel(context, () => MotorCard3Model());
    buttonModel2 = createModel(context, () => Button4Model());
    buttonModel3 = createModel(context, () => Button4Model());
  }

  @override
  void dispose() {
    filterItemModel1.dispose();
    filterItemModel2.dispose();
    filterItemModel3.dispose();
    filterItemModel4.dispose();
    filterItemModel5.dispose();
    buttonModel1.dispose();
    motorCardModel1.dispose();
    motorCardModel2.dispose();
    motorCardModel3.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
  }
}

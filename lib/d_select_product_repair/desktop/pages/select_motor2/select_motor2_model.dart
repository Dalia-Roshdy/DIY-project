import '/d_select_product_repair/desktop/components/components/button3/button3_widget.dart';
import '/d_select_product_repair/desktop/components/components/filter_item4/filter_item4_widget.dart';
import '/d_select_product_repair/desktop/components/components/motor_card2/motor_card2_widget.dart';
import '/d_select_product_repair/desktop/components/components/text_field3/text_field3_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'select_motor2_widget.dart' show SelectMotor2Widget;
import 'package:flutter/material.dart';

class SelectMotor2Model extends FlutterFlowModel<SelectMotor2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField3Model textFieldModel;
  // Model for FilterItem.
  late FilterItem4Model filterItemModel1;
  // Model for FilterItem.
  late FilterItem4Model filterItemModel2;
  // Model for FilterItem.
  late FilterItem4Model filterItemModel3;
  // Model for FilterItem.
  late FilterItem4Model filterItemModel4;
  // Model for FilterItem.
  late FilterItem4Model filterItemModel5;
  // Model for Button.
  late Button3Model buttonModel1;
  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Model for MotorCard.
  late MotorCard2Model motorCardModel1;
  // Model for MotorCard.
  late MotorCard2Model motorCardModel2;
  // Model for MotorCard.
  late MotorCard2Model motorCardModel3;
  // Model for Button.
  late Button3Model buttonModel2;
  // Model for Button.
  late Button3Model buttonModel3;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField3Model());
    filterItemModel1 = createModel(context, () => FilterItem4Model());
    filterItemModel2 = createModel(context, () => FilterItem4Model());
    filterItemModel3 = createModel(context, () => FilterItem4Model());
    filterItemModel4 = createModel(context, () => FilterItem4Model());
    filterItemModel5 = createModel(context, () => FilterItem4Model());
    buttonModel1 = createModel(context, () => Button3Model());
    motorCardModel1 = createModel(context, () => MotorCard2Model());
    motorCardModel2 = createModel(context, () => MotorCard2Model());
    motorCardModel3 = createModel(context, () => MotorCard2Model());
    buttonModel2 = createModel(context, () => Button3Model());
    buttonModel3 = createModel(context, () => Button3Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
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

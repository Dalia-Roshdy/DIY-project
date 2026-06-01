import '/d_select_product_repair/desktop/components/components/a_header_section/a_header_section_widget.dart';
import '/d_select_product_repair/desktop/components/components/button/button_widget.dart';
import '/d_select_product_repair/desktop/components/components/filter_item2/filter_item2_widget.dart';
import '/d_select_product_repair/desktop/components/components/motor_card/motor_card_widget.dart';
import '/d_select_product_repair/desktop/components/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'select_motor_widget.dart' show SelectMotorWidget;
import 'package:flutter/material.dart';

class SelectMotorModel extends FlutterFlowModel<SelectMotorWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for A-Header_Section component.
  late AHeaderSectionModel aHeaderSectionModel;
  // Model for FilterItem.
  late FilterItem2Model filterItemModel1;
  // Model for FilterItem.
  late FilterItem2Model filterItemModel2;
  // Model for FilterItem.
  late FilterItem2Model filterItemModel3;
  // Model for FilterItem.
  late FilterItem2Model filterItemModel4;
  // Model for FilterItem.
  late FilterItem2Model filterItemModel5;
  // Model for Button.
  late ButtonModel buttonModel1;
  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Model for MotorCard.
  late MotorCardModel motorCardModel1;
  // Model for MotorCard.
  late MotorCardModel motorCardModel2;
  // Model for MotorCard.
  late MotorCardModel motorCardModel3;
  // Model for Button.
  late ButtonModel buttonModel2;
  // Model for Button.
  late ButtonModel buttonModel3;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    aHeaderSectionModel = createModel(context, () => AHeaderSectionModel());
    filterItemModel1 = createModel(context, () => FilterItem2Model());
    filterItemModel2 = createModel(context, () => FilterItem2Model());
    filterItemModel3 = createModel(context, () => FilterItem2Model());
    filterItemModel4 = createModel(context, () => FilterItem2Model());
    filterItemModel5 = createModel(context, () => FilterItem2Model());
    buttonModel1 = createModel(context, () => ButtonModel());
    motorCardModel1 = createModel(context, () => MotorCardModel());
    motorCardModel2 = createModel(context, () => MotorCardModel());
    motorCardModel3 = createModel(context, () => MotorCardModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    buttonModel3 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    aHeaderSectionModel.dispose();
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

import '/d_select_product_repair/mobile/components/filter_item/filter_item_widget.dart';
import '/d_select_product_repair/mobile/components/product_card2/product_card2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_motor_mobile2_widget.dart' show SelectMotorMobile2Widget;
import 'package:flutter/material.dart';

class SelectMotorMobile2Model
    extends FlutterFlowModel<SelectMotorMobile2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for FilterItem.
  late FilterItemModel filterItemModel1;
  // Model for FilterItem.
  late FilterItemModel filterItemModel2;
  // Model for FilterItem.
  late FilterItemModel filterItemModel3;
  // Model for FilterItem.
  late FilterItemModel filterItemModel4;
  // Model for FilterItem.
  late FilterItemModel filterItemModel5;
  // Model for ProductCardS.
  late ProductCard2Model productCardSModel;
  // Model for ProductCard.
  late ProductCard2Model productCardModel1;
  // Model for ProductCard.
  late ProductCard2Model productCardModel2;

  @override
  void initState(BuildContext context) {
    filterItemModel1 = createModel(context, () => FilterItemModel());
    filterItemModel2 = createModel(context, () => FilterItemModel());
    filterItemModel3 = createModel(context, () => FilterItemModel());
    filterItemModel4 = createModel(context, () => FilterItemModel());
    filterItemModel5 = createModel(context, () => FilterItemModel());
    productCardSModel = createModel(context, () => ProductCard2Model());
    productCardModel1 = createModel(context, () => ProductCard2Model());
    productCardModel2 = createModel(context, () => ProductCard2Model());
  }

  @override
  void dispose() {
    filterItemModel1.dispose();
    filterItemModel2.dispose();
    filterItemModel3.dispose();
    filterItemModel4.dispose();
    filterItemModel5.dispose();
    productCardSModel.dispose();
    productCardModel1.dispose();
    productCardModel2.dispose();
  }
}

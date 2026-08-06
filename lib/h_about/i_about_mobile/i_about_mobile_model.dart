import '/flutter_flow/flutter_flow_util.dart';
import '/h_about/industrial_badge/industrial_badge_widget.dart';
import '/h_about/objective_card2/objective_card2_widget.dart';
import '/h_about/scope_item2/scope_item2_widget.dart';
import 'i_about_mobile_widget.dart' show IAboutMobileWidget;
import 'package:flutter/material.dart';

class IAboutMobileModel extends FlutterFlowModel<IAboutMobileWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ObjectiveCard.
  late ObjectiveCard2Model objectiveCardModel1;
  // Model for ObjectiveCard.
  late ObjectiveCard2Model objectiveCardModel2;
  // Model for ScopeItem.
  late ScopeItem2Model scopeItemModel1;
  // Model for ScopeItem.
  late ScopeItem2Model scopeItemModel2;
  // Model for ScopeItem.
  late ScopeItem2Model scopeItemModel3;
  // Model for IndustrialBadge.
  late IndustrialBadgeModel industrialBadgeModel1;
  // Model for IndustrialBadge.
  late IndustrialBadgeModel industrialBadgeModel2;

  @override
  void initState(BuildContext context) {
    objectiveCardModel1 = createModel(context, () => ObjectiveCard2Model());
    objectiveCardModel2 = createModel(context, () => ObjectiveCard2Model());
    scopeItemModel1 = createModel(context, () => ScopeItem2Model());
    scopeItemModel2 = createModel(context, () => ScopeItem2Model());
    scopeItemModel3 = createModel(context, () => ScopeItem2Model());
    industrialBadgeModel1 = createModel(context, () => IndustrialBadgeModel());
    industrialBadgeModel2 = createModel(context, () => IndustrialBadgeModel());
  }

  @override
  void dispose() {
    objectiveCardModel1.dispose();
    objectiveCardModel2.dispose();
    scopeItemModel1.dispose();
    scopeItemModel2.dispose();
    scopeItemModel3.dispose();
    industrialBadgeModel1.dispose();
    industrialBadgeModel2.dispose();
  }
}

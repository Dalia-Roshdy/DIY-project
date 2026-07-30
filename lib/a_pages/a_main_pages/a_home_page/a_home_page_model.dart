import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s02_headlines/s02_headlines_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_home_page_widget.dart' show AHomePageWidget;
import 'package:flutter/material.dart';

class AHomePageModel extends FlutterFlowModel<AHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for S02_Headlines component.
  late S02HeadlinesModel s02HeadlinesModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    s02HeadlinesModel = createModel(context, () => S02HeadlinesModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    s02HeadlinesModel.dispose();
    s12FooterModel.dispose();
  }
}

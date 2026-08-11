import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/c_library_video/c_video_diagnosis_desktop/c_video_diagnosis_desktop_widget.dart';
import '/c_library_video/c_video_diagnosis_mobile/c_video_diagnosis_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_library_video_flow_copy_widget.dart' show CLibraryVideoFlowCopyWidget;
import 'package:flutter/material.dart';

class CLibraryVideoFlowCopyModel
    extends FlutterFlowModel<CLibraryVideoFlowCopyWidget> {
  ///  Local state fields for this page.

  List<DiagnosisVideoRecord> list = [];
  void addToList(DiagnosisVideoRecord item) => list.add(item);
  void removeFromList(DiagnosisVideoRecord item) => list.remove(item);
  void removeAtIndexFromList(int index) => list.removeAt(index);
  void insertAtIndexInList(int index, DiagnosisVideoRecord item) =>
      list.insert(index, item);
  void updateListAtIndex(int index, Function(DiagnosisVideoRecord) updateFn) =>
      list[index] = updateFn(list[index]);

  DiagnosisVideoRecord? currentValue;

  DiagnosisVideoOptionRecord? selectedOption;

  List<DiagnosisVideoOptionRecord> currentOptions = [];
  void addToCurrentOptions(DiagnosisVideoOptionRecord item) =>
      currentOptions.add(item);
  void removeFromCurrentOptions(DiagnosisVideoOptionRecord item) =>
      currentOptions.remove(item);
  void removeAtIndexFromCurrentOptions(int index) =>
      currentOptions.removeAt(index);
  void insertAtIndexInCurrentOptions(
          int index, DiagnosisVideoOptionRecord item) =>
      currentOptions.insert(index, item);
  void updateCurrentOptionsAtIndex(
          int index, Function(DiagnosisVideoOptionRecord) updateFn) =>
      currentOptions[index] = updateFn(currentOptions[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in C-Library_Video_FlowCopy widget.
  DiagnosisVideoRecord? passedVideo;
  // Stores action output result for [Firestore Query - Query a collection] action in C-Library_Video_FlowCopy widget.
  DiagnosisVideoRecord? startPoint;
  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for C_Video_Diagnosis_mobile component.
  late CVideoDiagnosisMobileModel cVideoDiagnosisMobileModel;
  // Model for C_Video_Diagnosis_desktop component.
  late CVideoDiagnosisDesktopModel cVideoDiagnosisDesktopModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    cVideoDiagnosisMobileModel =
        createModel(context, () => CVideoDiagnosisMobileModel());
    cVideoDiagnosisDesktopModel =
        createModel(context, () => CVideoDiagnosisDesktopModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    cVideoDiagnosisMobileModel.dispose();
    cVideoDiagnosisDesktopModel.dispose();
    s12FooterModel.dispose();
  }
}

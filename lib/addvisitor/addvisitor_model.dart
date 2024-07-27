import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'addvisitor_widget.dart' show AddvisitorWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddvisitorModel extends FlutterFlowModel<AddvisitorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for fullname widget.
  FocusNode? fullnameFocusNode;
  TextEditingController? fullnameTextController;
  String? Function(BuildContext, String?)? fullnameTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for id widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  String? Function(BuildContext, String?)? idTextControllerValidator;
  // State field(s) for carplates widget.
  FocusNode? carplatesFocusNode;
  TextEditingController? carplatesTextController;
  String? Function(BuildContext, String?)? carplatesTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for numberofvisitors widget.
  FocusNode? numberofvisitorsFocusNode;
  TextEditingController? numberofvisitorsTextController;
  String? Function(BuildContext, String?)?
      numberofvisitorsTextControllerValidator;
  // State field(s) for visittime widget.
  FocusNode? visittimeFocusNode;
  TextEditingController? visittimeTextController;
  String? Function(BuildContext, String?)? visittimeTextControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  VisitorsRecord? vistorout;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    fullnameFocusNode?.dispose();
    fullnameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    idFocusNode?.dispose();
    idTextController?.dispose();

    carplatesFocusNode?.dispose();
    carplatesTextController?.dispose();

    numberofvisitorsFocusNode?.dispose();
    numberofvisitorsTextController?.dispose();

    visittimeFocusNode?.dispose();
    visittimeTextController?.dispose();
  }
}

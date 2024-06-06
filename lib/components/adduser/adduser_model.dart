import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'adduser_widget.dart' show AdduserWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdduserModel extends FlutterFlowModel<AdduserWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoTextController;
  String? Function(BuildContext, String?)? correoTextControllerValidator;
  String? _correoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Administrador widget.
  FormFieldController<List<String>>? administradorValueController;

  List<String>? get administradorValues => administradorValueController?.value;
  set administradorValues(List<String>? v) =>
      administradorValueController?.value = v;

  // State field(s) for Director widget.
  FormFieldController<List<String>>? directorValueController;

  List<String>? get directorValues => directorValueController?.value;
  set directorValues(List<String>? v) => directorValueController?.value = v;

  // State field(s) for Departamento widget.
  FormFieldController<List<String>>? departamentoValueController;

  List<String>? get departamentoValues => departamentoValueController?.value;
  set departamentoValues(List<String>? v) =>
      departamentoValueController?.value = v;

  // State field(s) for Seccin widget.
  FormFieldController<List<String>>? seccinValueController;

  List<String>? get seccinValues => seccinValueController?.value;
  set seccinValues(List<String>? v) => seccinValueController?.value = v;

  // Stores action output result for [Custom Action - chequearDuplicadosNombre] action in Button widget.
  int? retorno;

  @override
  void initState(BuildContext context) {
    nombreTextControllerValidator = _nombreTextControllerValidator;
    correoTextControllerValidator = _correoTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    correoFocusNode?.dispose();
    correoTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}

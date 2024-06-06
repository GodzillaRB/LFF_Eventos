import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_usuario_widget.dart' show EditarUsuarioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarUsuarioModel extends FlutterFlowModel<EditarUsuarioWidget> {
  ///  State fields for stateful widgets in this component.

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

  // State field(s) for Seccion widget.
  FormFieldController<List<String>>? seccionValueController;

  List<String>? get seccionValues => seccionValueController?.value;
  set seccionValues(List<String>? v) => seccionValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

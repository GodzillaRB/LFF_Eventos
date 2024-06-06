import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'form_solicitud_evento_widget.dart' show FormSolicitudEventoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormSolicitudEventoModel
    extends FlutterFlowModel<FormSolicitudEventoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Custom Action - chequearDuplicadosNombreEventos] action in Button widget.
  int? verificarNombreEvento;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FfEventosRecord? guardado;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UsersRecord>? queryUsuarios;
  // Stores action output result for [Custom Action - eventToJSON] action in Button widget.
  dynamic? createEvent;
  // Stores action output result for [Custom Action - signInWithGoogle] action in Button widget.
  String? accessToken;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();
  }
}

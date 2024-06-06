import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/barra_navegacion/barra_navegacion_widget.dart';
import '/components/notificaciones/notificaciones_widget.dart';
import '/components/profile/profile_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'estado_eventos_widget.dart' show EstadoEventosWidget;
import 'package:badges/badges.dart' as badges;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EstadoEventosModel extends FlutterFlowModel<EstadoEventosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BarraNavegacion component.
  late BarraNavegacionModel barraNavegacionModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<FfEventosRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<FfEventosRecord>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<FfEventosRecord>();

  @override
  void initState(BuildContext context) {
    barraNavegacionModel = createModel(context, () => BarraNavegacionModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    barraNavegacionModel.dispose();
    tabBarController?.dispose();
  }
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FfEventosRecord extends FirestoreRecord {
  FfEventosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreEvento" field.
  String? _nombreEvento;
  String get nombreEvento => _nombreEvento ?? '';
  bool hasNombreEvento() => _nombreEvento != null;

  // "fechaInicioEvento" field.
  DateTime? _fechaInicioEvento;
  DateTime? get fechaInicioEvento => _fechaInicioEvento;
  bool hasFechaInicioEvento() => _fechaInicioEvento != null;

  // "fechaFinEvento" field.
  DateTime? _fechaFinEvento;
  DateTime? get fechaFinEvento => _fechaFinEvento;
  bool hasFechaFinEvento() => _fechaFinEvento != null;

  // "estatus" field.
  String? _estatus;
  String get estatus => _estatus ?? '';
  bool hasEstatus() => _estatus != null;

  // "idUsuario" field.
  DocumentReference? _idUsuario;
  DocumentReference? get idUsuario => _idUsuario;
  bool hasIdUsuario() => _idUsuario != null;

  // "actividades" field.
  List<DocumentReference>? _actividades;
  List<DocumentReference> get actividades => _actividades ?? const [];
  bool hasActividades() => _actividades != null;

  // "responsable" field.
  String? _responsable;
  String get responsable => _responsable ?? '';
  bool hasResponsable() => _responsable != null;

  // "fechaRevision" field.
  DateTime? _fechaRevision;
  DateTime? get fechaRevision => _fechaRevision;
  bool hasFechaRevision() => _fechaRevision != null;

  // "leido" field.
  List<String>? _leido;
  List<String> get leido => _leido ?? const [];
  bool hasLeido() => _leido != null;

  // "creacion" field.
  DateTime? _creacion;
  DateTime? get creacion => _creacion;
  bool hasCreacion() => _creacion != null;

  // "califi" field.
  String? _califi;
  String get califi => _califi ?? '';
  bool hasCalifi() => _califi != null;

  void _initializeFields() {
    _nombreEvento = snapshotData['nombreEvento'] as String?;
    _fechaInicioEvento = snapshotData['fechaInicioEvento'] as DateTime?;
    _fechaFinEvento = snapshotData['fechaFinEvento'] as DateTime?;
    _estatus = snapshotData['estatus'] as String?;
    _idUsuario = snapshotData['idUsuario'] as DocumentReference?;
    _actividades = getDataList(snapshotData['actividades']);
    _responsable = snapshotData['responsable'] as String?;
    _fechaRevision = snapshotData['fechaRevision'] as DateTime?;
    _leido = getDataList(snapshotData['leido']);
    _creacion = snapshotData['creacion'] as DateTime?;
    _califi = snapshotData['califi'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FF_EVENTOS');

  static Stream<FfEventosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FfEventosRecord.fromSnapshot(s));

  static Future<FfEventosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FfEventosRecord.fromSnapshot(s));

  static FfEventosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FfEventosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FfEventosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FfEventosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FfEventosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FfEventosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFfEventosRecordData({
  String? nombreEvento,
  DateTime? fechaInicioEvento,
  DateTime? fechaFinEvento,
  String? estatus,
  DocumentReference? idUsuario,
  String? responsable,
  DateTime? fechaRevision,
  DateTime? creacion,
  String? califi,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreEvento': nombreEvento,
      'fechaInicioEvento': fechaInicioEvento,
      'fechaFinEvento': fechaFinEvento,
      'estatus': estatus,
      'idUsuario': idUsuario,
      'responsable': responsable,
      'fechaRevision': fechaRevision,
      'creacion': creacion,
      'califi': califi,
    }.withoutNulls,
  );

  return firestoreData;
}

class FfEventosRecordDocumentEquality implements Equality<FfEventosRecord> {
  const FfEventosRecordDocumentEquality();

  @override
  bool equals(FfEventosRecord? e1, FfEventosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombreEvento == e2?.nombreEvento &&
        e1?.fechaInicioEvento == e2?.fechaInicioEvento &&
        e1?.fechaFinEvento == e2?.fechaFinEvento &&
        e1?.estatus == e2?.estatus &&
        e1?.idUsuario == e2?.idUsuario &&
        listEquality.equals(e1?.actividades, e2?.actividades) &&
        e1?.responsable == e2?.responsable &&
        e1?.fechaRevision == e2?.fechaRevision &&
        listEquality.equals(e1?.leido, e2?.leido) &&
        e1?.creacion == e2?.creacion &&
        e1?.califi == e2?.califi;
  }

  @override
  int hash(FfEventosRecord? e) => const ListEquality().hash([
        e?.nombreEvento,
        e?.fechaInicioEvento,
        e?.fechaFinEvento,
        e?.estatus,
        e?.idUsuario,
        e?.actividades,
        e?.responsable,
        e?.fechaRevision,
        e?.leido,
        e?.creacion,
        e?.califi
      ]);

  @override
  bool isValidKey(Object? o) => o is FfEventosRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActividadesRecord extends FirestoreRecord {
  ActividadesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "dia" field.
  DateTime? _dia;
  DateTime? get dia => _dia;
  bool hasDia() => _dia != null;

  // "horaInicio" field.
  DateTime? _horaInicio;
  DateTime? get horaInicio => _horaInicio;
  bool hasHoraInicio() => _horaInicio != null;

  // "horaFin" field.
  DateTime? _horaFin;
  DateTime? get horaFin => _horaFin;
  bool hasHoraFin() => _horaFin != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "responsable" field.
  String? _responsable;
  String get responsable => _responsable ?? '';
  bool hasResponsable() => _responsable != null;

  // "refRecursos" field.
  List<DocumentReference>? _refRecursos;
  List<DocumentReference> get refRecursos => _refRecursos ?? const [];
  bool hasRefRecursos() => _refRecursos != null;

  // "cantidadInvitados" field.
  int? _cantidadInvitados;
  int get cantidadInvitados => _cantidadInvitados ?? 0;
  bool hasCantidadInvitados() => _cantidadInvitados != null;

  // "croquis" field.
  String? _croquis;
  String get croquis => _croquis ?? '';
  bool hasCroquis() => _croquis != null;

  // "lineamientos" field.
  String? _lineamientos;
  String get lineamientos => _lineamientos ?? '';
  bool hasLineamientos() => _lineamientos != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _dia = snapshotData['dia'] as DateTime?;
    _horaInicio = snapshotData['horaInicio'] as DateTime?;
    _horaFin = snapshotData['horaFin'] as DateTime?;
    _area = snapshotData['area'] as String?;
    _responsable = snapshotData['responsable'] as String?;
    _refRecursos = getDataList(snapshotData['refRecursos']);
    _cantidadInvitados = castToType<int>(snapshotData['cantidadInvitados']);
    _croquis = snapshotData['croquis'] as String?;
    _lineamientos = snapshotData['lineamientos'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('actividades');

  static Stream<ActividadesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActividadesRecord.fromSnapshot(s));

  static Future<ActividadesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActividadesRecord.fromSnapshot(s));

  static ActividadesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActividadesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActividadesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActividadesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActividadesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActividadesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActividadesRecordData({
  String? nombre,
  DateTime? dia,
  DateTime? horaInicio,
  DateTime? horaFin,
  String? area,
  String? responsable,
  int? cantidadInvitados,
  String? croquis,
  String? lineamientos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'dia': dia,
      'horaInicio': horaInicio,
      'horaFin': horaFin,
      'area': area,
      'responsable': responsable,
      'cantidadInvitados': cantidadInvitados,
      'croquis': croquis,
      'lineamientos': lineamientos,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActividadesRecordDocumentEquality implements Equality<ActividadesRecord> {
  const ActividadesRecordDocumentEquality();

  @override
  bool equals(ActividadesRecord? e1, ActividadesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombre == e2?.nombre &&
        e1?.dia == e2?.dia &&
        e1?.horaInicio == e2?.horaInicio &&
        e1?.horaFin == e2?.horaFin &&
        e1?.area == e2?.area &&
        e1?.responsable == e2?.responsable &&
        listEquality.equals(e1?.refRecursos, e2?.refRecursos) &&
        e1?.cantidadInvitados == e2?.cantidadInvitados &&
        e1?.croquis == e2?.croquis &&
        e1?.lineamientos == e2?.lineamientos;
  }

  @override
  int hash(ActividadesRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.dia,
        e?.horaInicio,
        e?.horaFin,
        e?.area,
        e?.responsable,
        e?.refRecursos,
        e?.cantidadInvitados,
        e?.croquis,
        e?.lineamientos
      ]);

  @override
  bool isValidKey(Object? o) => o is ActividadesRecord;
}

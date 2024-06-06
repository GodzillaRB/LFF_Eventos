import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CatalogoAreasRecord extends FirestoreRecord {
  CatalogoAreasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "caracteristicas" field.
  String? _caracteristicas;
  String get caracteristicas => _caracteristicas ?? '';
  bool hasCaracteristicas() => _caracteristicas != null;

  // "observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  bool hasObservaciones() => _observaciones != null;

  // "horarioNoDisponible" field.
  String? _horarioNoDisponible;
  String get horarioNoDisponible => _horarioNoDisponible ?? '';
  bool hasHorarioNoDisponible() => _horarioNoDisponible != null;

  // "capacidadAprox" field.
  String? _capacidadAprox;
  String get capacidadAprox => _capacidadAprox ?? '';
  bool hasCapacidadAprox() => _capacidadAprox != null;

  // "leido" field.
  bool? _leido;
  bool get leido => _leido ?? false;
  bool hasLeido() => _leido != null;

  void _initializeFields() {
    _area = snapshotData['area'] as String?;
    _caracteristicas = snapshotData['caracteristicas'] as String?;
    _observaciones = snapshotData['observaciones'] as String?;
    _horarioNoDisponible = snapshotData['horarioNoDisponible'] as String?;
    _capacidadAprox = snapshotData['capacidadAprox'] as String?;
    _leido = snapshotData['leido'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('catalogoAreas');

  static Stream<CatalogoAreasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CatalogoAreasRecord.fromSnapshot(s));

  static Future<CatalogoAreasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CatalogoAreasRecord.fromSnapshot(s));

  static CatalogoAreasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CatalogoAreasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CatalogoAreasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CatalogoAreasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CatalogoAreasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CatalogoAreasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCatalogoAreasRecordData({
  String? area,
  String? caracteristicas,
  String? observaciones,
  String? horarioNoDisponible,
  String? capacidadAprox,
  bool? leido,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'area': area,
      'caracteristicas': caracteristicas,
      'observaciones': observaciones,
      'horarioNoDisponible': horarioNoDisponible,
      'capacidadAprox': capacidadAprox,
      'leido': leido,
    }.withoutNulls,
  );

  return firestoreData;
}

class CatalogoAreasRecordDocumentEquality
    implements Equality<CatalogoAreasRecord> {
  const CatalogoAreasRecordDocumentEquality();

  @override
  bool equals(CatalogoAreasRecord? e1, CatalogoAreasRecord? e2) {
    return e1?.area == e2?.area &&
        e1?.caracteristicas == e2?.caracteristicas &&
        e1?.observaciones == e2?.observaciones &&
        e1?.horarioNoDisponible == e2?.horarioNoDisponible &&
        e1?.capacidadAprox == e2?.capacidadAprox &&
        e1?.leido == e2?.leido;
  }

  @override
  int hash(CatalogoAreasRecord? e) => const ListEquality().hash([
        e?.area,
        e?.caracteristicas,
        e?.observaciones,
        e?.horarioNoDisponible,
        e?.capacidadAprox,
        e?.leido
      ]);

  @override
  bool isValidKey(Object? o) => o is CatalogoAreasRecord;
}

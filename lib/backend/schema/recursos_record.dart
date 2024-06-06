import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecursosRecord extends FirestoreRecord {
  RecursosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "refMateriales" field.
  DocumentReference? _refMateriales;
  DocumentReference? get refMateriales => _refMateriales;
  bool hasRefMateriales() => _refMateriales != null;

  // "Departamento" field.
  String? _departamento;
  String get departamento => _departamento ?? '';
  bool hasDepartamento() => _departamento != null;

  // "Observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  bool hasObservaciones() => _observaciones != null;

  void _initializeFields() {
    _cantidad = castToType<int>(snapshotData['Cantidad']);
    _refMateriales = snapshotData['refMateriales'] as DocumentReference?;
    _departamento = snapshotData['Departamento'] as String?;
    _observaciones = snapshotData['Observaciones'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Recursos');

  static Stream<RecursosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecursosRecord.fromSnapshot(s));

  static Future<RecursosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecursosRecord.fromSnapshot(s));

  static RecursosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecursosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecursosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecursosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecursosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecursosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecursosRecordData({
  int? cantidad,
  DocumentReference? refMateriales,
  String? departamento,
  String? observaciones,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Cantidad': cantidad,
      'refMateriales': refMateriales,
      'Departamento': departamento,
      'Observaciones': observaciones,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecursosRecordDocumentEquality implements Equality<RecursosRecord> {
  const RecursosRecordDocumentEquality();

  @override
  bool equals(RecursosRecord? e1, RecursosRecord? e2) {
    return e1?.cantidad == e2?.cantidad &&
        e1?.refMateriales == e2?.refMateriales &&
        e1?.departamento == e2?.departamento &&
        e1?.observaciones == e2?.observaciones;
  }

  @override
  int hash(RecursosRecord? e) => const ListEquality()
      .hash([e?.cantidad, e?.refMateriales, e?.departamento, e?.observaciones]);

  @override
  bool isValidKey(Object? o) => o is RecursosRecord;
}

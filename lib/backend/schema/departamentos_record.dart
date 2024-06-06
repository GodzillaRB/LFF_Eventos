import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DepartamentosRecord extends FirestoreRecord {
  DepartamentosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreDepartamento" field.
  String? _nombreDepartamento;
  String get nombreDepartamento => _nombreDepartamento ?? '';
  bool hasNombreDepartamento() => _nombreDepartamento != null;

  void _initializeFields() {
    _nombreDepartamento = snapshotData['nombreDepartamento'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('departamentos');

  static Stream<DepartamentosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DepartamentosRecord.fromSnapshot(s));

  static Future<DepartamentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DepartamentosRecord.fromSnapshot(s));

  static DepartamentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DepartamentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DepartamentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DepartamentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DepartamentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DepartamentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDepartamentosRecordData({
  String? nombreDepartamento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreDepartamento': nombreDepartamento,
    }.withoutNulls,
  );

  return firestoreData;
}

class DepartamentosRecordDocumentEquality
    implements Equality<DepartamentosRecord> {
  const DepartamentosRecordDocumentEquality();

  @override
  bool equals(DepartamentosRecord? e1, DepartamentosRecord? e2) {
    return e1?.nombreDepartamento == e2?.nombreDepartamento;
  }

  @override
  int hash(DepartamentosRecord? e) =>
      const ListEquality().hash([e?.nombreDepartamento]);

  @override
  bool isValidKey(Object? o) => o is DepartamentosRecord;
}

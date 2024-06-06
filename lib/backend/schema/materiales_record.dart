import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaterialesRecord extends FirestoreRecord {
  MaterialesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Departamento" field.
  String? _departamento;
  String get departamento => _departamento ?? '';
  bool hasDepartamento() => _departamento != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _departamento = snapshotData['Departamento'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Materiales');

  static Stream<MaterialesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MaterialesRecord.fromSnapshot(s));

  static Future<MaterialesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MaterialesRecord.fromSnapshot(s));

  static MaterialesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MaterialesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MaterialesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MaterialesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MaterialesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MaterialesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMaterialesRecordData({
  String? nombre,
  String? descripcion,
  String? departamento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Descripcion': descripcion,
      'Departamento': departamento,
    }.withoutNulls,
  );

  return firestoreData;
}

class MaterialesRecordDocumentEquality implements Equality<MaterialesRecord> {
  const MaterialesRecordDocumentEquality();

  @override
  bool equals(MaterialesRecord? e1, MaterialesRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.departamento == e2?.departamento;
  }

  @override
  int hash(MaterialesRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.descripcion, e?.departamento]);

  @override
  bool isValidKey(Object? o) => o is MaterialesRecord;
}

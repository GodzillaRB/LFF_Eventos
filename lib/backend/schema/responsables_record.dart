import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponsablesRecord extends FirestoreRecord {
  ResponsablesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreResponsable" field.
  String? _nombreResponsable;
  String get nombreResponsable => _nombreResponsable ?? '';
  bool hasNombreResponsable() => _nombreResponsable != null;

  // "seccion" field.
  String? _seccion;
  String get seccion => _seccion ?? '';
  bool hasSeccion() => _seccion != null;

  void _initializeFields() {
    _nombreResponsable = snapshotData['nombreResponsable'] as String?;
    _seccion = snapshotData['seccion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Responsables');

  static Stream<ResponsablesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResponsablesRecord.fromSnapshot(s));

  static Future<ResponsablesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResponsablesRecord.fromSnapshot(s));

  static ResponsablesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResponsablesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResponsablesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResponsablesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResponsablesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResponsablesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResponsablesRecordData({
  String? nombreResponsable,
  String? seccion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreResponsable': nombreResponsable,
      'seccion': seccion,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResponsablesRecordDocumentEquality
    implements Equality<ResponsablesRecord> {
  const ResponsablesRecordDocumentEquality();

  @override
  bool equals(ResponsablesRecord? e1, ResponsablesRecord? e2) {
    return e1?.nombreResponsable == e2?.nombreResponsable &&
        e1?.seccion == e2?.seccion;
  }

  @override
  int hash(ResponsablesRecord? e) =>
      const ListEquality().hash([e?.nombreResponsable, e?.seccion]);

  @override
  bool isValidKey(Object? o) => o is ResponsablesRecord;
}

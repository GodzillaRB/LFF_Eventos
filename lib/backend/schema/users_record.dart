import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "isDirector" field.
  bool? _isDirector;
  bool get isDirector => _isDirector ?? false;
  bool hasIsDirector() => _isDirector != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "nivel" field.
  String? _nivel;
  String get nivel => _nivel ?? '';
  bool hasNivel() => _nivel != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "isDepartamento" field.
  bool? _isDepartamento;
  bool get isDepartamento => _isDepartamento ?? false;
  bool hasIsDepartamento() => _isDepartamento != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "isSeccion" field.
  bool? _isSeccion;
  bool get isSeccion => _isSeccion ?? false;
  bool hasIsSeccion() => _isSeccion != null;

  void _initializeFields() {
    _isAdmin = snapshotData['isAdmin'] as bool?;
    _isDirector = snapshotData['isDirector'] as bool?;
    _nombre = snapshotData['nombre'] as String?;
    _password = snapshotData['password'] as String?;
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _nivel = snapshotData['nivel'] as String?;
    _area = snapshotData['area'] as String?;
    _isDepartamento = snapshotData['isDepartamento'] as bool?;
    _displayName = snapshotData['display_name'] as String?;
    _isSeccion = snapshotData['isSeccion'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  bool? isAdmin,
  bool? isDirector,
  String? nombre,
  String? password,
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? nivel,
  String? area,
  bool? isDepartamento,
  String? displayName,
  bool? isSeccion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'isAdmin': isAdmin,
      'isDirector': isDirector,
      'nombre': nombre,
      'password': password,
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'nivel': nivel,
      'area': area,
      'isDepartamento': isDepartamento,
      'display_name': displayName,
      'isSeccion': isSeccion,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.isAdmin == e2?.isAdmin &&
        e1?.isDirector == e2?.isDirector &&
        e1?.nombre == e2?.nombre &&
        e1?.password == e2?.password &&
        e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.nivel == e2?.nivel &&
        e1?.area == e2?.area &&
        e1?.isDepartamento == e2?.isDepartamento &&
        e1?.displayName == e2?.displayName &&
        e1?.isSeccion == e2?.isSeccion;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.isAdmin,
        e?.isDirector,
        e?.nombre,
        e?.password,
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.nivel,
        e?.area,
        e?.isDepartamento,
        e?.displayName,
        e?.isSeccion
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

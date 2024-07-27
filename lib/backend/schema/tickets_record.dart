import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketsRecord extends FirestoreRecord {
  TicketsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "imagePath" field.
  String? _imagePath;
  String get imagePath => _imagePath ?? '';
  bool hasImagePath() => _imagePath != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "iscompelete" field.
  bool? _iscompelete;
  bool get iscompelete => _iscompelete ?? false;
  bool hasIscompelete() => _iscompelete != null;

  // "tenant" field.
  String? _tenant;
  String get tenant => _tenant ?? '';
  bool hasTenant() => _tenant != null;

  // "buildingnumber" field.
  String? _buildingnumber;
  String get buildingnumber => _buildingnumber ?? '';
  bool hasBuildingnumber() => _buildingnumber != null;

  // "completedby" field.
  String? _completedby;
  String get completedby => _completedby ?? '';
  bool hasCompletedby() => _completedby != null;

  // "doornumber" field.
  String? _doornumber;
  String get doornumber => _doornumber ?? '';
  bool hasDoornumber() => _doornumber != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _imagePath = snapshotData['imagePath'] as String?;
    _email = snapshotData['email'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _iscompelete = snapshotData['iscompelete'] as bool?;
    _tenant = snapshotData['tenant'] as String?;
    _buildingnumber = snapshotData['buildingnumber'] as String?;
    _completedby = snapshotData['completedby'] as String?;
    _doornumber = snapshotData['doornumber'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tickets');

  static Stream<TicketsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TicketsRecord.fromSnapshot(s));

  static Future<TicketsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TicketsRecord.fromSnapshot(s));

  static TicketsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TicketsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TicketsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TicketsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TicketsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TicketsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTicketsRecordData({
  String? title,
  String? description,
  String? imagePath,
  String? email,
  DateTime? createdTime,
  String? phoneNumber,
  bool? iscompelete,
  String? tenant,
  String? buildingnumber,
  String? completedby,
  String? doornumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'imagePath': imagePath,
      'email': email,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'iscompelete': iscompelete,
      'tenant': tenant,
      'buildingnumber': buildingnumber,
      'completedby': completedby,
      'doornumber': doornumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class TicketsRecordDocumentEquality implements Equality<TicketsRecord> {
  const TicketsRecordDocumentEquality();

  @override
  bool equals(TicketsRecord? e1, TicketsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.imagePath == e2?.imagePath &&
        e1?.email == e2?.email &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.iscompelete == e2?.iscompelete &&
        e1?.tenant == e2?.tenant &&
        e1?.buildingnumber == e2?.buildingnumber &&
        e1?.completedby == e2?.completedby &&
        e1?.doornumber == e2?.doornumber;
  }

  @override
  int hash(TicketsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.imagePath,
        e?.email,
        e?.createdTime,
        e?.phoneNumber,
        e?.iscompelete,
        e?.tenant,
        e?.buildingnumber,
        e?.completedby,
        e?.doornumber
      ]);

  @override
  bool isValidKey(Object? o) => o is TicketsRecord;
}

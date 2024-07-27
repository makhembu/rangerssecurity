import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VisitorsRecord extends FirestoreRecord {
  VisitorsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "QID" field.
  String? _qid;
  String get qid => _qid ?? '';
  bool hasQid() => _qid != null;

  // "building_number" field.
  String? _buildingNumber;
  String get buildingNumber => _buildingNumber ?? '';
  bool hasBuildingNumber() => _buildingNumber != null;

  // "car_plates" field.
  String? _carPlates;
  String get carPlates => _carPlates ?? '';
  bool hasCarPlates() => _carPlates != null;

  // "door_number" field.
  String? _doorNumber;
  String get doorNumber => _doorNumber ?? '';
  bool hasDoorNumber() => _doorNumber != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "tenant" field.
  String? _tenant;
  String get tenant => _tenant ?? '';
  bool hasTenant() => _tenant != null;

  // "numberofvisitors" field.
  String? _numberofvisitors;
  String get numberofvisitors => _numberofvisitors ?? '';
  bool hasNumberofvisitors() => _numberofvisitors != null;

  // "visittime" field.
  DateTime? _visittime;
  DateTime? get visittime => _visittime;
  bool hasVisittime() => _visittime != null;

  // "visittype" field.
  String? _visittype;
  String get visittype => _visittype ?? '';
  bool hasVisittype() => _visittype != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "ischecked" field.
  bool? _ischecked;
  bool get ischecked => _ischecked ?? false;
  bool hasIschecked() => _ischecked != null;

  // "checkedintime" field.
  DateTime? _checkedintime;
  DateTime? get checkedintime => _checkedintime;
  bool hasCheckedintime() => _checkedintime != null;

  void _initializeFields() {
    _qid = snapshotData['QID'] as String?;
    _buildingNumber = snapshotData['building_number'] as String?;
    _carPlates = snapshotData['car_plates'] as String?;
    _doorNumber = snapshotData['door_number'] as String?;
    _fullName = snapshotData['full_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _tenant = snapshotData['tenant'] as String?;
    _numberofvisitors = snapshotData['numberofvisitors'] as String?;
    _visittime = snapshotData['visittime'] as DateTime?;
    _visittype = snapshotData['visittype'] as String?;
    _uid = snapshotData['uid'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _ischecked = snapshotData['ischecked'] as bool?;
    _checkedintime = snapshotData['checkedintime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('visitors');

  static Stream<VisitorsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VisitorsRecord.fromSnapshot(s));

  static Future<VisitorsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VisitorsRecord.fromSnapshot(s));

  static VisitorsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VisitorsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VisitorsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VisitorsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VisitorsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VisitorsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVisitorsRecordData({
  String? qid,
  String? buildingNumber,
  String? carPlates,
  String? doorNumber,
  String? fullName,
  String? phoneNumber,
  String? tenant,
  String? numberofvisitors,
  DateTime? visittime,
  String? visittype,
  String? uid,
  String? photoUrl,
  String? email,
  String? displayName,
  DateTime? createdTime,
  bool? ischecked,
  DateTime? checkedintime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'QID': qid,
      'building_number': buildingNumber,
      'car_plates': carPlates,
      'door_number': doorNumber,
      'full_name': fullName,
      'phone_number': phoneNumber,
      'tenant': tenant,
      'numberofvisitors': numberofvisitors,
      'visittime': visittime,
      'visittype': visittype,
      'uid': uid,
      'photo_url': photoUrl,
      'email': email,
      'display_name': displayName,
      'created_time': createdTime,
      'ischecked': ischecked,
      'checkedintime': checkedintime,
    }.withoutNulls,
  );

  return firestoreData;
}

class VisitorsRecordDocumentEquality implements Equality<VisitorsRecord> {
  const VisitorsRecordDocumentEquality();

  @override
  bool equals(VisitorsRecord? e1, VisitorsRecord? e2) {
    return e1?.qid == e2?.qid &&
        e1?.buildingNumber == e2?.buildingNumber &&
        e1?.carPlates == e2?.carPlates &&
        e1?.doorNumber == e2?.doorNumber &&
        e1?.fullName == e2?.fullName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.tenant == e2?.tenant &&
        e1?.numberofvisitors == e2?.numberofvisitors &&
        e1?.visittime == e2?.visittime &&
        e1?.visittype == e2?.visittype &&
        e1?.uid == e2?.uid &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.ischecked == e2?.ischecked &&
        e1?.checkedintime == e2?.checkedintime;
  }

  @override
  int hash(VisitorsRecord? e) => const ListEquality().hash([
        e?.qid,
        e?.buildingNumber,
        e?.carPlates,
        e?.doorNumber,
        e?.fullName,
        e?.phoneNumber,
        e?.tenant,
        e?.numberofvisitors,
        e?.visittime,
        e?.visittype,
        e?.uid,
        e?.photoUrl,
        e?.email,
        e?.displayName,
        e?.createdTime,
        e?.ischecked,
        e?.checkedintime
      ]);

  @override
  bool isValidKey(Object? o) => o is VisitorsRecord;
}

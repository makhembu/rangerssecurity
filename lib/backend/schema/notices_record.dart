import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NoticesRecord extends FirestoreRecord {
  NoticesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "building_number" field.
  String? _buildingNumber;
  String get buildingNumber => _buildingNumber ?? '';
  bool hasBuildingNumber() => _buildingNumber != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "isactive" field.
  bool? _isactive;
  bool get isactive => _isactive ?? false;
  bool hasIsactive() => _isactive != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _buildingNumber = snapshotData['building_number'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _id = snapshotData['id'] as String?;
    _isactive = snapshotData['isactive'] as bool?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notices');

  static Stream<NoticesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NoticesRecord.fromSnapshot(s));

  static Future<NoticesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NoticesRecord.fromSnapshot(s));

  static NoticesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NoticesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NoticesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NoticesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NoticesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NoticesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNoticesRecordData({
  String? buildingNumber,
  DateTime? createdTime,
  String? description,
  String? displayName,
  String? id,
  bool? isactive,
  String? photoUrl,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'building_number': buildingNumber,
      'created_time': createdTime,
      'description': description,
      'display_name': displayName,
      'id': id,
      'isactive': isactive,
      'photo_url': photoUrl,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class NoticesRecordDocumentEquality implements Equality<NoticesRecord> {
  const NoticesRecordDocumentEquality();

  @override
  bool equals(NoticesRecord? e1, NoticesRecord? e2) {
    return e1?.buildingNumber == e2?.buildingNumber &&
        e1?.createdTime == e2?.createdTime &&
        e1?.description == e2?.description &&
        e1?.displayName == e2?.displayName &&
        e1?.id == e2?.id &&
        e1?.isactive == e2?.isactive &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.title == e2?.title;
  }

  @override
  int hash(NoticesRecord? e) => const ListEquality().hash([
        e?.buildingNumber,
        e?.createdTime,
        e?.description,
        e?.displayName,
        e?.id,
        e?.isactive,
        e?.photoUrl,
        e?.title
      ]);

  @override
  bool isValidKey(Object? o) => o is NoticesRecord;
}

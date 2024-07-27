import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmergencyRecord extends FirestoreRecord {
  EmergencyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "block" field.
  String? _block;
  String get block => _block ?? '';
  bool hasBlock() => _block != null;

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

  // "door_number" field.
  String? _doorNumber;
  String get doorNumber => _doorNumber ?? '';
  bool hasDoorNumber() => _doorNumber != null;

  // "etype" field.
  String? _etype;
  String get etype => _etype ?? '';
  bool hasEtype() => _etype != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  bool hasUnit() => _unit != null;

  void _initializeFields() {
    _block = snapshotData['block'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _doorNumber = snapshotData['door_number'] as String?;
    _etype = snapshotData['etype'] as String?;
    _photo = snapshotData['photo'] as String?;
    _unit = snapshotData['unit'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('emergency');

  static Stream<EmergencyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmergencyRecord.fromSnapshot(s));

  static Future<EmergencyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmergencyRecord.fromSnapshot(s));

  static EmergencyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmergencyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmergencyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmergencyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmergencyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmergencyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmergencyRecordData({
  String? block,
  DateTime? createdTime,
  String? description,
  String? displayName,
  String? doorNumber,
  String? etype,
  String? photo,
  String? unit,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'block': block,
      'created_time': createdTime,
      'description': description,
      'display_name': displayName,
      'door_number': doorNumber,
      'etype': etype,
      'photo': photo,
      'unit': unit,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmergencyRecordDocumentEquality implements Equality<EmergencyRecord> {
  const EmergencyRecordDocumentEquality();

  @override
  bool equals(EmergencyRecord? e1, EmergencyRecord? e2) {
    return e1?.block == e2?.block &&
        e1?.createdTime == e2?.createdTime &&
        e1?.description == e2?.description &&
        e1?.displayName == e2?.displayName &&
        e1?.doorNumber == e2?.doorNumber &&
        e1?.etype == e2?.etype &&
        e1?.photo == e2?.photo &&
        e1?.unit == e2?.unit;
  }

  @override
  int hash(EmergencyRecord? e) => const ListEquality().hash([
        e?.block,
        e?.createdTime,
        e?.description,
        e?.displayName,
        e?.doorNumber,
        e?.etype,
        e?.photo,
        e?.unit
      ]);

  @override
  bool isValidKey(Object? o) => o is EmergencyRecord;
}

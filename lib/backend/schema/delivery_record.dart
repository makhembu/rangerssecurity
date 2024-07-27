import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeliveryRecord extends FirestoreRecord {
  DeliveryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "Phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Deliverypoint" field.
  String? _deliverypoint;
  String get deliverypoint => _deliverypoint ?? '';
  bool hasDeliverypoint() => _deliverypoint != null;

  // "tenant" field.
  String? _tenant;
  String get tenant => _tenant ?? '';
  bool hasTenant() => _tenant != null;

  // "building_number" field.
  String? _buildingNumber;
  String get buildingNumber => _buildingNumber ?? '';
  bool hasBuildingNumber() => _buildingNumber != null;

  // "door_number" field.
  String? _doorNumber;
  String get doorNumber => _doorNumber ?? '';
  bool hasDoorNumber() => _doorNumber != null;

  // "delivery_time" field.
  DateTime? _deliveryTime;
  DateTime? get deliveryTime => _deliveryTime;
  bool hasDeliveryTime() => _deliveryTime != null;

  void _initializeFields() {
    _fullName = snapshotData['full_name'] as String?;
    _phoneNumber = snapshotData['Phone_number'] as String?;
    _deliverypoint = snapshotData['Deliverypoint'] as String?;
    _tenant = snapshotData['tenant'] as String?;
    _buildingNumber = snapshotData['building_number'] as String?;
    _doorNumber = snapshotData['door_number'] as String?;
    _deliveryTime = snapshotData['delivery_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('delivery');

  static Stream<DeliveryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeliveryRecord.fromSnapshot(s));

  static Future<DeliveryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeliveryRecord.fromSnapshot(s));

  static DeliveryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeliveryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeliveryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeliveryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeliveryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeliveryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeliveryRecordData({
  String? fullName,
  String? phoneNumber,
  String? deliverypoint,
  String? tenant,
  String? buildingNumber,
  String? doorNumber,
  DateTime? deliveryTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'full_name': fullName,
      'Phone_number': phoneNumber,
      'Deliverypoint': deliverypoint,
      'tenant': tenant,
      'building_number': buildingNumber,
      'door_number': doorNumber,
      'delivery_time': deliveryTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeliveryRecordDocumentEquality implements Equality<DeliveryRecord> {
  const DeliveryRecordDocumentEquality();

  @override
  bool equals(DeliveryRecord? e1, DeliveryRecord? e2) {
    return e1?.fullName == e2?.fullName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.deliverypoint == e2?.deliverypoint &&
        e1?.tenant == e2?.tenant &&
        e1?.buildingNumber == e2?.buildingNumber &&
        e1?.doorNumber == e2?.doorNumber &&
        e1?.deliveryTime == e2?.deliveryTime;
  }

  @override
  int hash(DeliveryRecord? e) => const ListEquality().hash([
        e?.fullName,
        e?.phoneNumber,
        e?.deliverypoint,
        e?.tenant,
        e?.buildingNumber,
        e?.doorNumber,
        e?.deliveryTime
      ]);

  @override
  bool isValidKey(Object? o) => o is DeliveryRecord;
}

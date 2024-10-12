import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProvidersRecord extends FirestoreRecord {
  ProvidersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "providerId" field.
  String? _providerId;
  String get providerId => _providerId ?? '';
  bool hasProviderId() => _providerId != null;

  // "providerName" field.
  String? _providerName;
  String get providerName => _providerName ?? '';
  bool hasProviderName() => _providerName != null;

  // "organizationId" field.
  String? _organizationId;
  String get organizationId => _organizationId ?? '';
  bool hasOrganizationId() => _organizationId != null;

  // "claimed" field.
  bool? _claimed;
  bool get claimed => _claimed ?? false;
  bool hasClaimed() => _claimed != null;

  // "responseTime" field.
  String? _responseTime;
  String get responseTime => _responseTime ?? '';
  bool hasResponseTime() => _responseTime != null;

  // "usersSent" field.
  int? _usersSent;
  int get usersSent => _usersSent ?? 0;
  bool hasUsersSent() => _usersSent != null;

  // "usersAccepted" field.
  int? _usersAccepted;
  int get usersAccepted => _usersAccepted ?? 0;
  bool hasUsersAccepted() => _usersAccepted != null;

  // "usersRejected" field.
  int? _usersRejected;
  int get usersRejected => _usersRejected ?? 0;
  bool hasUsersRejected() => _usersRejected != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "location" field.
  LocationStruct? _location;
  LocationStruct get location => _location ?? LocationStruct();
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _providerId = snapshotData['providerId'] as String?;
    _providerName = snapshotData['providerName'] as String?;
    _organizationId = snapshotData['organizationId'] as String?;
    _claimed = snapshotData['claimed'] as bool?;
    _responseTime = snapshotData['responseTime'] as String?;
    _usersSent = castToType<int>(snapshotData['usersSent']);
    _usersAccepted = castToType<int>(snapshotData['usersAccepted']);
    _usersRejected = castToType<int>(snapshotData['usersRejected']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _location = LocationStruct.maybeFromMap(snapshotData['location']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('providers');

  static Stream<ProvidersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProvidersRecord.fromSnapshot(s));

  static Future<ProvidersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProvidersRecord.fromSnapshot(s));

  static ProvidersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProvidersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProvidersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProvidersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProvidersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProvidersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProvidersRecordData({
  String? providerId,
  String? providerName,
  String? organizationId,
  bool? claimed,
  String? responseTime,
  int? usersSent,
  int? usersAccepted,
  int? usersRejected,
  DateTime? createdAt,
  DateTime? updatedAt,
  LocationStruct? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'providerId': providerId,
      'providerName': providerName,
      'organizationId': organizationId,
      'claimed': claimed,
      'responseTime': responseTime,
      'usersSent': usersSent,
      'usersAccepted': usersAccepted,
      'usersRejected': usersRejected,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'location': LocationStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "location" field.
  addLocationStructData(firestoreData, location, 'location');

  return firestoreData;
}

class ProvidersRecordDocumentEquality implements Equality<ProvidersRecord> {
  const ProvidersRecordDocumentEquality();

  @override
  bool equals(ProvidersRecord? e1, ProvidersRecord? e2) {
    return e1?.providerId == e2?.providerId &&
        e1?.providerName == e2?.providerName &&
        e1?.organizationId == e2?.organizationId &&
        e1?.claimed == e2?.claimed &&
        e1?.responseTime == e2?.responseTime &&
        e1?.usersSent == e2?.usersSent &&
        e1?.usersAccepted == e2?.usersAccepted &&
        e1?.usersRejected == e2?.usersRejected &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.location == e2?.location;
  }

  @override
  int hash(ProvidersRecord? e) => const ListEquality().hash([
        e?.providerId,
        e?.providerName,
        e?.organizationId,
        e?.claimed,
        e?.responseTime,
        e?.usersSent,
        e?.usersAccepted,
        e?.usersRejected,
        e?.createdAt,
        e?.updatedAt,
        e?.location
      ]);

  @override
  bool isValidKey(Object? o) => o is ProvidersRecord;
}

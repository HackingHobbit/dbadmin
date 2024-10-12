// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CoordinatesStruct extends FFFirebaseStruct {
  CoordinatesStruct({
    double? latitude,
    double? longitude,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _latitude = latitude,
        _longitude = longitude,
        super(firestoreUtilData);

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;

  void incrementLatitude(double amount) => latitude = latitude + amount;

  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;

  void incrementLongitude(double amount) => longitude = longitude + amount;

  bool hasLongitude() => _longitude != null;

  static CoordinatesStruct fromMap(Map<String, dynamic> data) =>
      CoordinatesStruct(
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
      );

  static CoordinatesStruct? maybeFromMap(dynamic data) => data is Map
      ? CoordinatesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'latitude': _latitude,
        'longitude': _longitude,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.double,
        ),
      }.withoutNulls;

  static CoordinatesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CoordinatesStruct(
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CoordinatesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CoordinatesStruct &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode => const ListEquality().hash([latitude, longitude]);
}

CoordinatesStruct createCoordinatesStruct({
  double? latitude,
  double? longitude,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CoordinatesStruct(
      latitude: latitude,
      longitude: longitude,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CoordinatesStruct? updateCoordinatesStruct(
  CoordinatesStruct? coordinates, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    coordinates
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCoordinatesStructData(
  Map<String, dynamic> firestoreData,
  CoordinatesStruct? coordinates,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (coordinates == null) {
    return;
  }
  if (coordinates.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && coordinates.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final coordinatesData =
      getCoordinatesFirestoreData(coordinates, forFieldValue);
  final nestedData =
      coordinatesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = coordinates.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCoordinatesFirestoreData(
  CoordinatesStruct? coordinates, [
  bool forFieldValue = false,
]) {
  if (coordinates == null) {
    return {};
  }
  final firestoreData = mapToFirestore(coordinates.toMap());

  // Add any Firestore field values
  coordinates.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCoordinatesListFirestoreData(
  List<CoordinatesStruct>? coordinatess,
) =>
    coordinatess?.map((e) => getCoordinatesFirestoreData(e, true)).toList() ??
    [];

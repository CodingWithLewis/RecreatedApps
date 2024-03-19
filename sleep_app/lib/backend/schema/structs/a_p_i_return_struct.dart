// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class APIReturnStruct extends FFFirebaseStruct {
  APIReturnStruct({
    String? message,
    String? uuid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _message = message,
        _uuid = uuid,
        super(firestoreUtilData);

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  set uuid(String? val) => _uuid = val;
  bool hasUuid() => _uuid != null;

  static APIReturnStruct fromMap(Map<String, dynamic> data) => APIReturnStruct(
        message: data['message'] as String?,
        uuid: data['uuid'] as String?,
      );

  static APIReturnStruct? maybeFromMap(dynamic data) => data is Map
      ? APIReturnStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'uuid': _uuid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'uuid': serializeParam(
          _uuid,
          ParamType.String,
        ),
      }.withoutNulls;

  static APIReturnStruct fromSerializableMap(Map<String, dynamic> data) =>
      APIReturnStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        uuid: deserializeParam(
          data['uuid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'APIReturnStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is APIReturnStruct &&
        message == other.message &&
        uuid == other.uuid;
  }

  @override
  int get hashCode => const ListEquality().hash([message, uuid]);
}

APIReturnStruct createAPIReturnStruct({
  String? message,
  String? uuid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    APIReturnStruct(
      message: message,
      uuid: uuid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

APIReturnStruct? updateAPIReturnStruct(
  APIReturnStruct? aPIReturn, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    aPIReturn
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAPIReturnStructData(
  Map<String, dynamic> firestoreData,
  APIReturnStruct? aPIReturn,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (aPIReturn == null) {
    return;
  }
  if (aPIReturn.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && aPIReturn.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final aPIReturnData = getAPIReturnFirestoreData(aPIReturn, forFieldValue);
  final nestedData = aPIReturnData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = aPIReturn.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAPIReturnFirestoreData(
  APIReturnStruct? aPIReturn, [
  bool forFieldValue = false,
]) {
  if (aPIReturn == null) {
    return {};
  }
  final firestoreData = mapToFirestore(aPIReturn.toMap());

  // Add any Firestore field values
  aPIReturn.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAPIReturnListFirestoreData(
  List<APIReturnStruct>? aPIReturns,
) =>
    aPIReturns?.map((e) => getAPIReturnFirestoreData(e, true)).toList() ?? [];

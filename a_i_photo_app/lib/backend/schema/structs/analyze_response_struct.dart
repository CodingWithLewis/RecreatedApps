// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AnalyzeResponseStruct extends FFFirebaseStruct {
  AnalyzeResponseStruct({
    String? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  static AnalyzeResponseStruct fromMap(Map<String, dynamic> data) =>
      AnalyzeResponseStruct(
        id: data['id'] as String?,
      );

  static AnalyzeResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? AnalyzeResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static AnalyzeResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      AnalyzeResponseStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AnalyzeResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AnalyzeResponseStruct && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([id]);
}

AnalyzeResponseStruct createAnalyzeResponseStruct({
  String? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AnalyzeResponseStruct(
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AnalyzeResponseStruct? updateAnalyzeResponseStruct(
  AnalyzeResponseStruct? analyzeResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    analyzeResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAnalyzeResponseStructData(
  Map<String, dynamic> firestoreData,
  AnalyzeResponseStruct? analyzeResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (analyzeResponse == null) {
    return;
  }
  if (analyzeResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && analyzeResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final analyzeResponseData =
      getAnalyzeResponseFirestoreData(analyzeResponse, forFieldValue);
  final nestedData =
      analyzeResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = analyzeResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAnalyzeResponseFirestoreData(
  AnalyzeResponseStruct? analyzeResponse, [
  bool forFieldValue = false,
]) {
  if (analyzeResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(analyzeResponse.toMap());

  // Add any Firestore field values
  analyzeResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAnalyzeResponseListFirestoreData(
  List<AnalyzeResponseStruct>? analyzeResponses,
) =>
    analyzeResponses
        ?.map((e) => getAnalyzeResponseFirestoreData(e, true))
        .toList() ??
    [];

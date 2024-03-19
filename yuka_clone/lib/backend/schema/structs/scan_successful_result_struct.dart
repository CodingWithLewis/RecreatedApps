// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ScanSuccessfulResultStruct extends FFFirebaseStruct {
  ScanSuccessfulResultStruct({
    String? updateTime,
    String? productName,
    String? message,
    String? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _updateTime = updateTime,
        _productName = productName,
        _message = message,
        _id = id,
        super(firestoreUtilData);

  // "update_time" field.
  String? _updateTime;
  String get updateTime => _updateTime ?? '';
  set updateTime(String? val) => _updateTime = val;
  bool hasUpdateTime() => _updateTime != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;
  bool hasProductName() => _productName != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  static ScanSuccessfulResultStruct fromMap(Map<String, dynamic> data) =>
      ScanSuccessfulResultStruct(
        updateTime: data['update_time'] as String?,
        productName: data['product_name'] as String?,
        message: data['message'] as String?,
        id: data['id'] as String?,
      );

  static ScanSuccessfulResultStruct? maybeFromMap(dynamic data) => data is Map
      ? ScanSuccessfulResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'update_time': _updateTime,
        'product_name': _productName,
        'message': _message,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'update_time': serializeParam(
          _updateTime,
          ParamType.String,
        ),
        'product_name': serializeParam(
          _productName,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static ScanSuccessfulResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ScanSuccessfulResultStruct(
        updateTime: deserializeParam(
          data['update_time'],
          ParamType.String,
          false,
        ),
        productName: deserializeParam(
          data['product_name'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ScanSuccessfulResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ScanSuccessfulResultStruct &&
        updateTime == other.updateTime &&
        productName == other.productName &&
        message == other.message &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([updateTime, productName, message, id]);
}

ScanSuccessfulResultStruct createScanSuccessfulResultStruct({
  String? updateTime,
  String? productName,
  String? message,
  String? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ScanSuccessfulResultStruct(
      updateTime: updateTime,
      productName: productName,
      message: message,
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ScanSuccessfulResultStruct? updateScanSuccessfulResultStruct(
  ScanSuccessfulResultStruct? scanSuccessfulResult, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    scanSuccessfulResult
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addScanSuccessfulResultStructData(
  Map<String, dynamic> firestoreData,
  ScanSuccessfulResultStruct? scanSuccessfulResult,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (scanSuccessfulResult == null) {
    return;
  }
  if (scanSuccessfulResult.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && scanSuccessfulResult.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final scanSuccessfulResultData =
      getScanSuccessfulResultFirestoreData(scanSuccessfulResult, forFieldValue);
  final nestedData =
      scanSuccessfulResultData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      scanSuccessfulResult.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getScanSuccessfulResultFirestoreData(
  ScanSuccessfulResultStruct? scanSuccessfulResult, [
  bool forFieldValue = false,
]) {
  if (scanSuccessfulResult == null) {
    return {};
  }
  final firestoreData = mapToFirestore(scanSuccessfulResult.toMap());

  // Add any Firestore field values
  scanSuccessfulResult.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getScanSuccessfulResultListFirestoreData(
  List<ScanSuccessfulResultStruct>? scanSuccessfulResults,
) =>
    scanSuccessfulResults
        ?.map((e) => getScanSuccessfulResultFirestoreData(e, true))
        .toList() ??
    [];

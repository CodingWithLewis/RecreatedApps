// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SleepGraphStruct extends FFFirebaseStruct {
  SleepGraphStruct({
    DateTime? time,
    double? value,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _time = time,
        _value = value,
        super(firestoreUtilData);

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  set time(DateTime? val) => _time = val;
  bool hasTime() => _time != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  set value(double? val) => _value = val;
  void incrementValue(double amount) => _value = value + amount;
  bool hasValue() => _value != null;

  static SleepGraphStruct fromMap(Map<String, dynamic> data) =>
      SleepGraphStruct(
        time: data['time'] as DateTime?,
        value: castToType<double>(data['value']),
      );

  static SleepGraphStruct? maybeFromMap(dynamic data) => data is Map
      ? SleepGraphStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'time': _time,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'time': serializeParam(
          _time,
          ParamType.DateTime,
        ),
        'value': serializeParam(
          _value,
          ParamType.double,
        ),
      }.withoutNulls;

  static SleepGraphStruct fromSerializableMap(Map<String, dynamic> data) =>
      SleepGraphStruct(
        time: deserializeParam(
          data['time'],
          ParamType.DateTime,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'SleepGraphStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SleepGraphStruct &&
        time == other.time &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([time, value]);
}

SleepGraphStruct createSleepGraphStruct({
  DateTime? time,
  double? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SleepGraphStruct(
      time: time,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SleepGraphStruct? updateSleepGraphStruct(
  SleepGraphStruct? sleepGraph, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sleepGraph
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSleepGraphStructData(
  Map<String, dynamic> firestoreData,
  SleepGraphStruct? sleepGraph,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sleepGraph == null) {
    return;
  }
  if (sleepGraph.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sleepGraph.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sleepGraphData = getSleepGraphFirestoreData(sleepGraph, forFieldValue);
  final nestedData = sleepGraphData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sleepGraph.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSleepGraphFirestoreData(
  SleepGraphStruct? sleepGraph, [
  bool forFieldValue = false,
]) {
  if (sleepGraph == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sleepGraph.toMap());

  // Add any Firestore field values
  sleepGraph.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSleepGraphListFirestoreData(
  List<SleepGraphStruct>? sleepGraphs,
) =>
    sleepGraphs?.map((e) => getSleepGraphFirestoreData(e, true)).toList() ?? [];

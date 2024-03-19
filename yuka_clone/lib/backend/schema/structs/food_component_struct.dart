// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodComponentStruct extends FFFirebaseStruct {
  FoodComponentStruct({
    String? id,
    int? points,
    int? pointsMax,
    String? unit,
    double? value,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _points = points,
        _pointsMax = pointsMax,
        _unit = unit,
        _value = value,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  set points(int? val) => _points = val;
  void incrementPoints(int amount) => _points = points + amount;
  bool hasPoints() => _points != null;

  // "points_max" field.
  int? _pointsMax;
  int get pointsMax => _pointsMax ?? 0;
  set pointsMax(int? val) => _pointsMax = val;
  void incrementPointsMax(int amount) => _pointsMax = pointsMax + amount;
  bool hasPointsMax() => _pointsMax != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;
  bool hasUnit() => _unit != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  set value(double? val) => _value = val;
  void incrementValue(double amount) => _value = value + amount;
  bool hasValue() => _value != null;

  static FoodComponentStruct fromMap(Map<String, dynamic> data) =>
      FoodComponentStruct(
        id: data['id'] as String?,
        points: castToType<int>(data['points']),
        pointsMax: castToType<int>(data['points_max']),
        unit: data['unit'] as String?,
        value: castToType<double>(data['value']),
      );

  static FoodComponentStruct? maybeFromMap(dynamic data) => data is Map
      ? FoodComponentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'points': _points,
        'points_max': _pointsMax,
        'unit': _unit,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'points': serializeParam(
          _points,
          ParamType.int,
        ),
        'points_max': serializeParam(
          _pointsMax,
          ParamType.int,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.double,
        ),
      }.withoutNulls;

  static FoodComponentStruct fromSerializableMap(Map<String, dynamic> data) =>
      FoodComponentStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        points: deserializeParam(
          data['points'],
          ParamType.int,
          false,
        ),
        pointsMax: deserializeParam(
          data['points_max'],
          ParamType.int,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'FoodComponentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FoodComponentStruct &&
        id == other.id &&
        points == other.points &&
        pointsMax == other.pointsMax &&
        unit == other.unit &&
        value == other.value;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, points, pointsMax, unit, value]);
}

FoodComponentStruct createFoodComponentStruct({
  String? id,
  int? points,
  int? pointsMax,
  String? unit,
  double? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FoodComponentStruct(
      id: id,
      points: points,
      pointsMax: pointsMax,
      unit: unit,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FoodComponentStruct? updateFoodComponentStruct(
  FoodComponentStruct? foodComponent, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    foodComponent
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFoodComponentStructData(
  Map<String, dynamic> firestoreData,
  FoodComponentStruct? foodComponent,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (foodComponent == null) {
    return;
  }
  if (foodComponent.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && foodComponent.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final foodComponentData =
      getFoodComponentFirestoreData(foodComponent, forFieldValue);
  final nestedData =
      foodComponentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = foodComponent.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFoodComponentFirestoreData(
  FoodComponentStruct? foodComponent, [
  bool forFieldValue = false,
]) {
  if (foodComponent == null) {
    return {};
  }
  final firestoreData = mapToFirestore(foodComponent.toMap());

  // Add any Firestore field values
  foodComponent.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFoodComponentListFirestoreData(
  List<FoodComponentStruct>? foodComponents,
) =>
    foodComponents
        ?.map((e) => getFoodComponentFirestoreData(e, true))
        .toList() ??
    [];

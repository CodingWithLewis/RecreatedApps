import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScansRecord extends FirestoreRecord {
  ScansRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "barcode" field.
  String? _barcode;
  String get barcode => _barcode ?? '';
  bool hasBarcode() => _barcode != null;

  // "fat_100g" field.
  double? _fat100g;
  double get fat100g => _fat100g ?? 0.0;
  bool hasFat100g() => _fat100g != null;

  // "fat_serving" field.
  double? _fatServing;
  double get fatServing => _fatServing ?? 0.0;
  bool hasFatServing() => _fatServing != null;

  // "fat_unit" field.
  String? _fatUnit;
  String get fatUnit => _fatUnit ?? '';
  bool hasFatUnit() => _fatUnit != null;

  // "fat_value" field.
  double? _fatValue;
  double get fatValue => _fatValue ?? 0.0;
  bool hasFatValue() => _fatValue != null;

  // "fibre_100g" field.
  double? _fibre100g;
  double get fibre100g => _fibre100g ?? 0.0;
  bool hasFibre100g() => _fibre100g != null;

  // "fibre_serving" field.
  double? _fibreServing;
  double get fibreServing => _fibreServing ?? 0.0;
  bool hasFibreServing() => _fibreServing != null;

  // "fibre_unit" field.
  String? _fibreUnit;
  String get fibreUnit => _fibreUnit ?? '';
  bool hasFibreUnit() => _fibreUnit != null;

  // "fibre_value" field.
  double? _fibreValue;
  double get fibreValue => _fibreValue ?? 0.0;
  bool hasFibreValue() => _fibreValue != null;

  // "iron_100g" field.
  double? _iron100g;
  double get iron100g => _iron100g ?? 0.0;
  bool hasIron100g() => _iron100g != null;

  // "iron_serving" field.
  double? _ironServing;
  double get ironServing => _ironServing ?? 0.0;
  bool hasIronServing() => _ironServing != null;

  // "iron_unit" field.
  String? _ironUnit;
  String get ironUnit => _ironUnit ?? '';
  bool hasIronUnit() => _ironUnit != null;

  // "iron_value" field.
  double? _ironValue;
  double get ironValue => _ironValue ?? 0.0;
  bool hasIronValue() => _ironValue != null;

  // "calories_100g" field.
  double? _calories100g;
  double get calories100g => _calories100g ?? 0.0;
  bool hasCalories100g() => _calories100g != null;

  // "calories_serving" field.
  double? _caloriesServing;
  double get caloriesServing => _caloriesServing ?? 0.0;
  bool hasCaloriesServing() => _caloriesServing != null;

  // "calories_unit" field.
  String? _caloriesUnit;
  String get caloriesUnit => _caloriesUnit ?? '';
  bool hasCaloriesUnit() => _caloriesUnit != null;

  // "calories_value" field.
  double? _caloriesValue;
  double get caloriesValue => _caloriesValue ?? 0.0;
  bool hasCaloriesValue() => _caloriesValue != null;

  // "carbs_100g" field.
  double? _carbs100g;
  double get carbs100g => _carbs100g ?? 0.0;
  bool hasCarbs100g() => _carbs100g != null;

  // "carbs_serving" field.
  double? _carbsServing;
  double get carbsServing => _carbsServing ?? 0.0;
  bool hasCarbsServing() => _carbsServing != null;

  // "carbs_unit" field.
  String? _carbsUnit;
  String get carbsUnit => _carbsUnit ?? '';
  bool hasCarbsUnit() => _carbsUnit != null;

  // "carbs_value" field.
  double? _carbsValue;
  double get carbsValue => _carbsValue ?? 0.0;
  bool hasCarbsValue() => _carbsValue != null;

  // "protein_100g" field.
  double? _protein100g;
  double get protein100g => _protein100g ?? 0.0;
  bool hasProtein100g() => _protein100g != null;

  // "protein_serving" field.
  double? _proteinServing;
  double get proteinServing => _proteinServing ?? 0.0;
  bool hasProteinServing() => _proteinServing != null;

  // "protein_unit" field.
  String? _proteinUnit;
  String get proteinUnit => _proteinUnit ?? '';
  bool hasProteinUnit() => _proteinUnit != null;

  // "protein_value" field.
  double? _proteinValue;
  double get proteinValue => _proteinValue ?? 0.0;
  bool hasProteinValue() => _proteinValue != null;

  // "sodium_100g" field.
  double? _sodium100g;
  double get sodium100g => _sodium100g ?? 0.0;
  bool hasSodium100g() => _sodium100g != null;

  // "sodium_serving" field.
  double? _sodiumServing;
  double get sodiumServing => _sodiumServing ?? 0.0;
  bool hasSodiumServing() => _sodiumServing != null;

  // "sodium_unit" field.
  String? _sodiumUnit;
  String get sodiumUnit => _sodiumUnit ?? '';
  bool hasSodiumUnit() => _sodiumUnit != null;

  // "sodium_value" field.
  double? _sodiumValue;
  double get sodiumValue => _sodiumValue ?? 0.0;
  bool hasSodiumValue() => _sodiumValue != null;

  // "sugar_100g" field.
  double? _sugar100g;
  double get sugar100g => _sugar100g ?? 0.0;
  bool hasSugar100g() => _sugar100g != null;

  // "sugar_serving" field.
  double? _sugarServing;
  double get sugarServing => _sugarServing ?? 0.0;
  bool hasSugarServing() => _sugarServing != null;

  // "sugar_unit" field.
  String? _sugarUnit;
  String get sugarUnit => _sugarUnit ?? '';
  bool hasSugarUnit() => _sugarUnit != null;

  // "sugar_value" field.
  double? _sugarValue;
  double get sugarValue => _sugarValue ?? 0.0;
  bool hasSugarValue() => _sugarValue != null;

  // "brand_owner" field.
  String? _brandOwner;
  String get brandOwner => _brandOwner ?? '';
  bool hasBrandOwner() => _brandOwner != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "negatives" field.
  List<FoodComponentStruct>? _negatives;
  List<FoodComponentStruct> get negatives => _negatives ?? const [];
  bool hasNegatives() => _negatives != null;

  // "positives" field.
  List<FoodComponentStruct>? _positives;
  List<FoodComponentStruct> get positives => _positives ?? const [];
  bool hasPositives() => _positives != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "scanned_by" field.
  String? _scannedBy;
  String get scannedBy => _scannedBy ?? '';
  bool hasScannedBy() => _scannedBy != null;

  // "score" field.
  String? _score;
  String get score => _score ?? '';
  bool hasScore() => _score != null;

  void _initializeFields() {
    _barcode = snapshotData['barcode'] as String?;
    _fat100g = castToType<double>(snapshotData['fat_100g']);
    _fatServing = castToType<double>(snapshotData['fat_serving']);
    _fatUnit = snapshotData['fat_unit'] as String?;
    _fatValue = castToType<double>(snapshotData['fat_value']);
    _fibre100g = castToType<double>(snapshotData['fibre_100g']);
    _fibreServing = castToType<double>(snapshotData['fibre_serving']);
    _fibreUnit = snapshotData['fibre_unit'] as String?;
    _fibreValue = castToType<double>(snapshotData['fibre_value']);
    _iron100g = castToType<double>(snapshotData['iron_100g']);
    _ironServing = castToType<double>(snapshotData['iron_serving']);
    _ironUnit = snapshotData['iron_unit'] as String?;
    _ironValue = castToType<double>(snapshotData['iron_value']);
    _calories100g = castToType<double>(snapshotData['calories_100g']);
    _caloriesServing = castToType<double>(snapshotData['calories_serving']);
    _caloriesUnit = snapshotData['calories_unit'] as String?;
    _caloriesValue = castToType<double>(snapshotData['calories_value']);
    _carbs100g = castToType<double>(snapshotData['carbs_100g']);
    _carbsServing = castToType<double>(snapshotData['carbs_serving']);
    _carbsUnit = snapshotData['carbs_unit'] as String?;
    _carbsValue = castToType<double>(snapshotData['carbs_value']);
    _protein100g = castToType<double>(snapshotData['protein_100g']);
    _proteinServing = castToType<double>(snapshotData['protein_serving']);
    _proteinUnit = snapshotData['protein_unit'] as String?;
    _proteinValue = castToType<double>(snapshotData['protein_value']);
    _sodium100g = castToType<double>(snapshotData['sodium_100g']);
    _sodiumServing = castToType<double>(snapshotData['sodium_serving']);
    _sodiumUnit = snapshotData['sodium_unit'] as String?;
    _sodiumValue = castToType<double>(snapshotData['sodium_value']);
    _sugar100g = castToType<double>(snapshotData['sugar_100g']);
    _sugarServing = castToType<double>(snapshotData['sugar_serving']);
    _sugarUnit = snapshotData['sugar_unit'] as String?;
    _sugarValue = castToType<double>(snapshotData['sugar_value']);
    _brandOwner = snapshotData['brand_owner'] as String?;
    _productName = snapshotData['product_name'] as String?;
    _imageUrl = snapshotData['image_url'] as String?;
    _negatives = getStructList(
      snapshotData['negatives'],
      FoodComponentStruct.fromMap,
    );
    _positives = getStructList(
      snapshotData['positives'],
      FoodComponentStruct.fromMap,
    );
    _id = snapshotData['id'] as String?;
    _scannedBy = snapshotData['scanned_by'] as String?;
    _score = snapshotData['score'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('scans');

  static Stream<ScansRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScansRecord.fromSnapshot(s));

  static Future<ScansRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScansRecord.fromSnapshot(s));

  static ScansRecord fromSnapshot(DocumentSnapshot snapshot) => ScansRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScansRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScansRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScansRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScansRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScansRecordData({
  String? barcode,
  double? fat100g,
  double? fatServing,
  String? fatUnit,
  double? fatValue,
  double? fibre100g,
  double? fibreServing,
  String? fibreUnit,
  double? fibreValue,
  double? iron100g,
  double? ironServing,
  String? ironUnit,
  double? ironValue,
  double? calories100g,
  double? caloriesServing,
  String? caloriesUnit,
  double? caloriesValue,
  double? carbs100g,
  double? carbsServing,
  String? carbsUnit,
  double? carbsValue,
  double? protein100g,
  double? proteinServing,
  String? proteinUnit,
  double? proteinValue,
  double? sodium100g,
  double? sodiumServing,
  String? sodiumUnit,
  double? sodiumValue,
  double? sugar100g,
  double? sugarServing,
  String? sugarUnit,
  double? sugarValue,
  String? brandOwner,
  String? productName,
  String? imageUrl,
  String? id,
  String? scannedBy,
  String? score,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'barcode': barcode,
      'fat_100g': fat100g,
      'fat_serving': fatServing,
      'fat_unit': fatUnit,
      'fat_value': fatValue,
      'fibre_100g': fibre100g,
      'fibre_serving': fibreServing,
      'fibre_unit': fibreUnit,
      'fibre_value': fibreValue,
      'iron_100g': iron100g,
      'iron_serving': ironServing,
      'iron_unit': ironUnit,
      'iron_value': ironValue,
      'calories_100g': calories100g,
      'calories_serving': caloriesServing,
      'calories_unit': caloriesUnit,
      'calories_value': caloriesValue,
      'carbs_100g': carbs100g,
      'carbs_serving': carbsServing,
      'carbs_unit': carbsUnit,
      'carbs_value': carbsValue,
      'protein_100g': protein100g,
      'protein_serving': proteinServing,
      'protein_unit': proteinUnit,
      'protein_value': proteinValue,
      'sodium_100g': sodium100g,
      'sodium_serving': sodiumServing,
      'sodium_unit': sodiumUnit,
      'sodium_value': sodiumValue,
      'sugar_100g': sugar100g,
      'sugar_serving': sugarServing,
      'sugar_unit': sugarUnit,
      'sugar_value': sugarValue,
      'brand_owner': brandOwner,
      'product_name': productName,
      'image_url': imageUrl,
      'id': id,
      'scanned_by': scannedBy,
      'score': score,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScansRecordDocumentEquality implements Equality<ScansRecord> {
  const ScansRecordDocumentEquality();

  @override
  bool equals(ScansRecord? e1, ScansRecord? e2) {
    const listEquality = ListEquality();
    return e1?.barcode == e2?.barcode &&
        e1?.fat100g == e2?.fat100g &&
        e1?.fatServing == e2?.fatServing &&
        e1?.fatUnit == e2?.fatUnit &&
        e1?.fatValue == e2?.fatValue &&
        e1?.fibre100g == e2?.fibre100g &&
        e1?.fibreServing == e2?.fibreServing &&
        e1?.fibreUnit == e2?.fibreUnit &&
        e1?.fibreValue == e2?.fibreValue &&
        e1?.iron100g == e2?.iron100g &&
        e1?.ironServing == e2?.ironServing &&
        e1?.ironUnit == e2?.ironUnit &&
        e1?.ironValue == e2?.ironValue &&
        e1?.calories100g == e2?.calories100g &&
        e1?.caloriesServing == e2?.caloriesServing &&
        e1?.caloriesUnit == e2?.caloriesUnit &&
        e1?.caloriesValue == e2?.caloriesValue &&
        e1?.carbs100g == e2?.carbs100g &&
        e1?.carbsServing == e2?.carbsServing &&
        e1?.carbsUnit == e2?.carbsUnit &&
        e1?.carbsValue == e2?.carbsValue &&
        e1?.protein100g == e2?.protein100g &&
        e1?.proteinServing == e2?.proteinServing &&
        e1?.proteinUnit == e2?.proteinUnit &&
        e1?.proteinValue == e2?.proteinValue &&
        e1?.sodium100g == e2?.sodium100g &&
        e1?.sodiumServing == e2?.sodiumServing &&
        e1?.sodiumUnit == e2?.sodiumUnit &&
        e1?.sodiumValue == e2?.sodiumValue &&
        e1?.sugar100g == e2?.sugar100g &&
        e1?.sugarServing == e2?.sugarServing &&
        e1?.sugarUnit == e2?.sugarUnit &&
        e1?.sugarValue == e2?.sugarValue &&
        e1?.brandOwner == e2?.brandOwner &&
        e1?.productName == e2?.productName &&
        e1?.imageUrl == e2?.imageUrl &&
        listEquality.equals(e1?.negatives, e2?.negatives) &&
        listEquality.equals(e1?.positives, e2?.positives) &&
        e1?.id == e2?.id &&
        e1?.scannedBy == e2?.scannedBy &&
        e1?.score == e2?.score;
  }

  @override
  int hash(ScansRecord? e) => const ListEquality().hash([
        e?.barcode,
        e?.fat100g,
        e?.fatServing,
        e?.fatUnit,
        e?.fatValue,
        e?.fibre100g,
        e?.fibreServing,
        e?.fibreUnit,
        e?.fibreValue,
        e?.iron100g,
        e?.ironServing,
        e?.ironUnit,
        e?.ironValue,
        e?.calories100g,
        e?.caloriesServing,
        e?.caloriesUnit,
        e?.caloriesValue,
        e?.carbs100g,
        e?.carbsServing,
        e?.carbsUnit,
        e?.carbsValue,
        e?.protein100g,
        e?.proteinServing,
        e?.proteinUnit,
        e?.proteinValue,
        e?.sodium100g,
        e?.sodiumServing,
        e?.sodiumUnit,
        e?.sodiumValue,
        e?.sugar100g,
        e?.sugarServing,
        e?.sugarUnit,
        e?.sugarValue,
        e?.brandOwner,
        e?.productName,
        e?.imageUrl,
        e?.negatives,
        e?.positives,
        e?.id,
        e?.scannedBy,
        e?.score
      ]);

  @override
  bool isValidKey(Object? o) => o is ScansRecord;
}

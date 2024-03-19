import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GraphDataRecord extends FirestoreRecord {
  GraphDataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "value" field.
  int? _value;
  int get value => _value ?? 0;
  bool hasValue() => _value != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _time = snapshotData['time'] as DateTime?;
    _value = castToType<int>(snapshotData['value']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('graph_data')
          : FirebaseFirestore.instance.collectionGroup('graph_data');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('graph_data').doc(id);

  static Stream<GraphDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GraphDataRecord.fromSnapshot(s));

  static Future<GraphDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GraphDataRecord.fromSnapshot(s));

  static GraphDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GraphDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GraphDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GraphDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GraphDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GraphDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGraphDataRecordData({
  DateTime? time,
  int? value,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time': time,
      'value': value,
    }.withoutNulls,
  );

  return firestoreData;
}

class GraphDataRecordDocumentEquality implements Equality<GraphDataRecord> {
  const GraphDataRecordDocumentEquality();

  @override
  bool equals(GraphDataRecord? e1, GraphDataRecord? e2) {
    return e1?.time == e2?.time && e1?.value == e2?.value;
  }

  @override
  int hash(GraphDataRecord? e) =>
      const ListEquality().hash([e?.time, e?.value]);

  @override
  bool isValidKey(Object? o) => o is GraphDataRecord;
}

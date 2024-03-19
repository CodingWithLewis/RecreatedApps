import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SleepScoresRecord extends FirestoreRecord {
  SleepScoresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "scanned_at" field.
  DateTime? _scannedAt;
  DateTime? get scannedAt => _scannedAt;
  bool hasScannedAt() => _scannedAt != null;

  // "sleep_score" field.
  int? _sleepScore;
  int get sleepScore => _sleepScore ?? 0;
  bool hasSleepScore() => _sleepScore != null;

  // "graphed_result" field.
  List<SleepGraphStruct>? _graphedResult;
  List<SleepGraphStruct> get graphedResult => _graphedResult ?? const [];
  bool hasGraphedResult() => _graphedResult != null;

  // "audio_files" field.
  List<AudioFilesStruct>? _audioFiles;
  List<AudioFilesStruct> get audioFiles => _audioFiles ?? const [];
  bool hasAudioFiles() => _audioFiles != null;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  bool hasUuid() => _uuid != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _scannedAt = snapshotData['scanned_at'] as DateTime?;
    _sleepScore = castToType<int>(snapshotData['sleep_score']);
    _graphedResult = getStructList(
      snapshotData['graphed_result'],
      SleepGraphStruct.fromMap,
    );
    _audioFiles = getStructList(
      snapshotData['audio_files'],
      AudioFilesStruct.fromMap,
    );
    _uuid = snapshotData['uuid'] as String?;
    _userId = snapshotData['user_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sleep_scores');

  static Stream<SleepScoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SleepScoresRecord.fromSnapshot(s));

  static Future<SleepScoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SleepScoresRecord.fromSnapshot(s));

  static SleepScoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SleepScoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SleepScoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SleepScoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SleepScoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SleepScoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSleepScoresRecordData({
  DateTime? scannedAt,
  int? sleepScore,
  String? uuid,
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'scanned_at': scannedAt,
      'sleep_score': sleepScore,
      'uuid': uuid,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class SleepScoresRecordDocumentEquality implements Equality<SleepScoresRecord> {
  const SleepScoresRecordDocumentEquality();

  @override
  bool equals(SleepScoresRecord? e1, SleepScoresRecord? e2) {
    const listEquality = ListEquality();
    return e1?.scannedAt == e2?.scannedAt &&
        e1?.sleepScore == e2?.sleepScore &&
        listEquality.equals(e1?.graphedResult, e2?.graphedResult) &&
        listEquality.equals(e1?.audioFiles, e2?.audioFiles) &&
        e1?.uuid == e2?.uuid &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(SleepScoresRecord? e) => const ListEquality().hash([
        e?.scannedAt,
        e?.sleepScore,
        e?.graphedResult,
        e?.audioFiles,
        e?.uuid,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is SleepScoresRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AiImagesRecord extends FirestoreRecord {
  AiImagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ai_images');

  static Stream<AiImagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AiImagesRecord.fromSnapshot(s));

  static Future<AiImagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AiImagesRecord.fromSnapshot(s));

  static AiImagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AiImagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AiImagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AiImagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AiImagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AiImagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAiImagesRecordData({
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class AiImagesRecordDocumentEquality implements Equality<AiImagesRecord> {
  const AiImagesRecordDocumentEquality();

  @override
  bool equals(AiImagesRecord? e1, AiImagesRecord? e2) {
    return e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(AiImagesRecord? e) => const ListEquality().hash([e?.photoUrl]);

  @override
  bool isValidKey(Object? o) => o is AiImagesRecord;
}

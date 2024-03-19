import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ImageUploadsRecord extends FirestoreRecord {
  ImageUploadsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "filename" field.
  String? _filename;
  String get filename => _filename ?? '';
  bool hasFilename() => _filename != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "public_url" field.
  String? _publicUrl;
  String get publicUrl => _publicUrl ?? '';
  bool hasPublicUrl() => _publicUrl != null;

  // "masks" field.
  List<String>? _masks;
  List<String> get masks => _masks ?? const [];
  bool hasMasks() => _masks != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "last_edited_on" field.
  DateTime? _lastEditedOn;
  DateTime? get lastEditedOn => _lastEditedOn;
  bool hasLastEditedOn() => _lastEditedOn != null;

  void _initializeFields() {
    _filename = snapshotData['filename'] as String?;
    _id = snapshotData['id'] as String?;
    _publicUrl = snapshotData['public_url'] as String?;
    _masks = getDataList(snapshotData['masks']);
    _userId = snapshotData['user_id'] as String?;
    _lastEditedOn = snapshotData['last_edited_on'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('image_uploads');

  static Stream<ImageUploadsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImageUploadsRecord.fromSnapshot(s));

  static Future<ImageUploadsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImageUploadsRecord.fromSnapshot(s));

  static ImageUploadsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ImageUploadsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImageUploadsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImageUploadsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImageUploadsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImageUploadsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImageUploadsRecordData({
  String? filename,
  String? id,
  String? publicUrl,
  String? userId,
  DateTime? lastEditedOn,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'filename': filename,
      'id': id,
      'public_url': publicUrl,
      'user_id': userId,
      'last_edited_on': lastEditedOn,
    }.withoutNulls,
  );

  return firestoreData;
}

class ImageUploadsRecordDocumentEquality
    implements Equality<ImageUploadsRecord> {
  const ImageUploadsRecordDocumentEquality();

  @override
  bool equals(ImageUploadsRecord? e1, ImageUploadsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.filename == e2?.filename &&
        e1?.id == e2?.id &&
        e1?.publicUrl == e2?.publicUrl &&
        listEquality.equals(e1?.masks, e2?.masks) &&
        e1?.userId == e2?.userId &&
        e1?.lastEditedOn == e2?.lastEditedOn;
  }

  @override
  int hash(ImageUploadsRecord? e) => const ListEquality().hash(
      [e?.filename, e?.id, e?.publicUrl, e?.masks, e?.userId, e?.lastEditedOn]);

  @override
  bool isValidKey(Object? o) => o is ImageUploadsRecord;
}

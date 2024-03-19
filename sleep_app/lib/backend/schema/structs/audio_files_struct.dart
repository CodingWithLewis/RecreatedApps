// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AudioFilesStruct extends FFFirebaseStruct {
  AudioFilesStruct({
    String? category,
    String? publicUrl,
    String? filePath,
    double? start,
    double? end,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _category = category,
        _publicUrl = publicUrl,
        _filePath = filePath,
        _start = start,
        _end = end,
        super(firestoreUtilData);

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "public_url" field.
  String? _publicUrl;
  String get publicUrl => _publicUrl ?? '';
  set publicUrl(String? val) => _publicUrl = val;
  bool hasPublicUrl() => _publicUrl != null;

  // "file_path" field.
  String? _filePath;
  String get filePath => _filePath ?? '';
  set filePath(String? val) => _filePath = val;
  bool hasFilePath() => _filePath != null;

  // "start" field.
  double? _start;
  double get start => _start ?? 0.0;
  set start(double? val) => _start = val;
  void incrementStart(double amount) => _start = start + amount;
  bool hasStart() => _start != null;

  // "end" field.
  double? _end;
  double get end => _end ?? 0.0;
  set end(double? val) => _end = val;
  void incrementEnd(double amount) => _end = end + amount;
  bool hasEnd() => _end != null;

  static AudioFilesStruct fromMap(Map<String, dynamic> data) =>
      AudioFilesStruct(
        category: data['category'] as String?,
        publicUrl: data['public_url'] as String?,
        filePath: data['file_path'] as String?,
        start: castToType<double>(data['start']),
        end: castToType<double>(data['end']),
      );

  static AudioFilesStruct? maybeFromMap(dynamic data) => data is Map
      ? AudioFilesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'category': _category,
        'public_url': _publicUrl,
        'file_path': _filePath,
        'start': _start,
        'end': _end,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'public_url': serializeParam(
          _publicUrl,
          ParamType.String,
        ),
        'file_path': serializeParam(
          _filePath,
          ParamType.String,
        ),
        'start': serializeParam(
          _start,
          ParamType.double,
        ),
        'end': serializeParam(
          _end,
          ParamType.double,
        ),
      }.withoutNulls;

  static AudioFilesStruct fromSerializableMap(Map<String, dynamic> data) =>
      AudioFilesStruct(
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        publicUrl: deserializeParam(
          data['public_url'],
          ParamType.String,
          false,
        ),
        filePath: deserializeParam(
          data['file_path'],
          ParamType.String,
          false,
        ),
        start: deserializeParam(
          data['start'],
          ParamType.double,
          false,
        ),
        end: deserializeParam(
          data['end'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'AudioFilesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AudioFilesStruct &&
        category == other.category &&
        publicUrl == other.publicUrl &&
        filePath == other.filePath &&
        start == other.start &&
        end == other.end;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([category, publicUrl, filePath, start, end]);
}

AudioFilesStruct createAudioFilesStruct({
  String? category,
  String? publicUrl,
  String? filePath,
  double? start,
  double? end,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AudioFilesStruct(
      category: category,
      publicUrl: publicUrl,
      filePath: filePath,
      start: start,
      end: end,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AudioFilesStruct? updateAudioFilesStruct(
  AudioFilesStruct? audioFiles, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    audioFiles
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAudioFilesStructData(
  Map<String, dynamic> firestoreData,
  AudioFilesStruct? audioFiles,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (audioFiles == null) {
    return;
  }
  if (audioFiles.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && audioFiles.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final audioFilesData = getAudioFilesFirestoreData(audioFiles, forFieldValue);
  final nestedData = audioFilesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = audioFiles.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAudioFilesFirestoreData(
  AudioFilesStruct? audioFiles, [
  bool forFieldValue = false,
]) {
  if (audioFiles == null) {
    return {};
  }
  final firestoreData = mapToFirestore(audioFiles.toMap());

  // Add any Firestore field values
  audioFiles.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAudioFilesListFirestoreData(
  List<AudioFilesStruct>? audioFiless,
) =>
    audioFiless?.map((e) => getAudioFilesFirestoreData(e, true)).toList() ?? [];

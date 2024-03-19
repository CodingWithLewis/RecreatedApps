import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SubmitAudioSampleCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? audioFile,
    String? userId = '',
    String? startedAt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Submit Audio Sample',
      apiUrl: 'https://mutual-happy-ray.ngrok-free.app/create-sleep-score/',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': '1',
      },
      params: {
        'audio_file': audioFile,
        'user_id': userId,
        'started_at': startedAt,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}

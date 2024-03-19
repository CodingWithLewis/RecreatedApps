import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BarcodeScanCall {
  static Future<ApiCallResponse> call({
    String? barcodeNumber = '',
    String? userId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "barcode": "$barcodeNumber",
  "user_id": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Barcode Scan',
      apiUrl: 'https://mutual-happy-ray.ngrok-free.app/items/',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': '1',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static double? calcium(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.calcium''',
      ));
  static String? calciumunit(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.calcium_unit''',
      ));
  static int? calcliumvalue(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.calcium_value''',
      ));
  static double? carbs(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.carbohydrates''',
      ));
  static String? carbsunit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.carbohydrates_unit''',
      ));
  static int? sodiumvalue(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sodium_value''',
      ));
  static String? sodiumunit(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sodium_unit''',
      ));
  static double? sugarsvalue(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.sugars_value''',
      ));
  static String? sugarsunit(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sugars_unit''',
      ));
  static String? barcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.barcode''',
      ));
  static double? fibervalue(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.fiber_value''',
      ));
  static String? fiberunit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.fiber_unit''',
      ));
  static int? saltvalue(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.salt_value''',
      ));
  static String? saltunit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.salt_unit''',
      ));
  static double? carbsvalue(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.carbohydrates_value''',
      ));
  static int? energyvalue(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.energy_value''',
      ));
  static String? energyunit(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.energy_unit''',
      ));
  static double? fatvalue(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.fat_value''',
      ));
  static String? fatunit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.fat_unit''',
      ));
  static String? documentRef(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.path''',
      ));
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

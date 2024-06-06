import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start BF - emailTemplateEmailFF Group Code

class BFEmailTemplateEmailFFGroup {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static EmailTemplateEmailFFCall emailTemplateEmailFFCall =
      EmailTemplateEmailFFCall();
}

class EmailTemplateEmailFFCall {
  Future<ApiCallResponse> call({
    List<String>? toList,
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
  }) async {
    final baseUrl = BFEmailTemplateEmailFFGroup.getBaseUrl();
    final to = _serializeList(toList);

    final ffApiRequestBody = '''
{
  "sk-bf-702b91a8-7bab-4980-afbd-268af5f3fa6e": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailTemplateEmailFF',
      apiUrl:
          '${baseUrl}/email?templateId=Uc7yu64Zq2B3a9SbtuLD&to=${to}&subject=${subject}&attachmentLink=${attachmentLink}&attachmentName=${attachmentName}',
      callType: ApiCallType.POST,
      headers: {},
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
}

/// End BF - emailTemplateEmailFF Group Code

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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

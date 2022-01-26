import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class ProductCatCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'productCat',
      apiUrl: 'https://muswiq.maljezani.com/wp-json/wc/v1/products/categories',
      callType: ApiCallType.GET,
      headers: {
        'authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvbXVzd2lxLm1hbGplemFuaS5jb20iLCJpYXQiOjE2NDI4NzkyNzcsIm5iZiI6MTY0Mjg3OTI3NywiZXhwIjoxNjQzNDg0MDc3LCJkYXRhIjp7InVzZXIiOnsiaWQiOiIxIn19fQ.QkG_dAvwR-XIb7CtiuOcSThcbKThayDSzbjwnrJVJks',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic catID(dynamic response) => getJsonField(
        response,
        r'''$..id''',
      );
  static dynamic catName(dynamic response) => getJsonField(
        response,
        r'''$..name''',
      );
}

class ProductListsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'productLists',
      apiUrl: 'https://muswiq.maljezani.com/wp-json/wc/v3/products',
      callType: ApiCallType.GET,
      headers: {
        'authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvbXVzd2lxLm1hbGplemFuaS5jb20iLCJpYXQiOjE2NDIyNzE0NzAsIm5iZiI6MTY0MjI3MTQ3MCwiZXhwIjoxNjQyODc2MjcwLCJkYXRhIjp7InVzZXIiOnsiaWQiOiIxIn19fQ.3LrnmXfV6luz9nB6AAK1MhatEBTXd6AlAWAJc50YXTk',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[<0:]id''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[<0:]name''',
      );
}

class PlwithIDCall {
  static Future<ApiCallResponse> call({
    int id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'plwithID',
      apiUrl: 'https://muswiq.maljezani.com/wp-json/wc/v3/products/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String username = '',
    String password = '',
  }) {
    final body = '''
{
  "username": "${username}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'https://muswiq.maljezani.com/wp-json/jwt-auth/v1/token',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': username,
        'password': password,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
}

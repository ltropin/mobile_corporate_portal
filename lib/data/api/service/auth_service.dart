import 'dart:convert';
import 'dart:io';

// import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_corporate_portal/data/api/model/api_token.dart';
import 'package:mobile_corporate_portal/data/api/model/api_validator.dart';
import 'package:mobile_corporate_portal/data/api/model/api_worker.dart';
import 'package:mobile_corporate_portal/data/api/request/post_auth_body.dart';
import 'package:mobile_corporate_portal/internal/di/alice.dart';
import 'package:mobile_corporate_portal/internal/di/global.dart';
import 'package:mobile_corporate_portal/util/constans.dart';
import 'package:tuple/tuple.dart';
import 'package:union/union.dart';
// import 'package:http/http.dart' as http;

class AuthService {
  Dio _dio;
  AuthService() {
    _dio = Dio(BaseOptions(
      baseUrl: apiUrl,
      sendTimeout: 10000, // 10s
      contentType: 'application/json; charset=UTF-8',
      followRedirects: false,
      headers: _headers,
      validateStatus: (status) => status <= 500,
    ));

    // _dio.interceptors.add(GetIt.I<AliceDI>().alice.getDioInterceptor());
  }

  final _headers = <String, String>{
    HttpHeaders.acceptHeader: 'application/json',
    HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8'
  };

  Future<Union2<Tuple2<ApiWorker, ApiToken>, List<ApiValidator>>> signIn(
      PostAuthBody body) async {
    final response = await _dio.post('/api/auth/signin',
        data: jsonEncode(body.toApi()));

    if (response.statusCode >= 420) {
      return (response.data as List<dynamic>)
          ?.map((e) => ApiValidator.fromApi(e as Map<String, dynamic>))
          ?.toList()
          ?.asSecond();
    } else if (response.statusCode >= 200) {
      return Tuple2<ApiWorker, ApiToken>(
        ApiWorker.fromJson(response.data['worker'] as Map<String, dynamic>),
        ApiToken.fromJson(response.data as Map<String, dynamic>),
      ).asFirst();
    } else {
      return null;
    }
  }

  void _setAuthToken() {
    final token = GetIt.I<GlobalDI>()?.token;
    _headers[HttpHeaders.authorizationHeader] = 'Bearer ${token.token}';
  }
}

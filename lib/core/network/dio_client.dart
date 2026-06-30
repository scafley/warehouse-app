import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:warehouse_app/core/auth/auth_notifier.dart';
import 'package:warehouse_app/core/storage/token_storage.dart';

@lazySingleton
class DioClient {
  final Dio dio;
  final TokenStorage _tokenStorage;
  final AuthNotifier _authNotifier;

  DioClient(this._tokenStorage, this._authNotifier)
    : dio = Dio(
        BaseOptions(
          baseUrl: 'http://localhost:5145/api',
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
      ) {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await _tokenStorage.getToken();
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            await _tokenStorage.deleteToken();
            _authNotifier.logout();
          }
          handler.next(error);
        },
      ),
    );
  }
}

import 'package:injectable/injectable.dart';
import 'package:warehouse_app/core/auth/auth_notifier.dart';
import 'package:warehouse_app/core/network/dio_client.dart';
import 'package:warehouse_app/core/storage/token_storage.dart';
import 'package:warehouse_app/features/auth/data/models/auth_response.dart';

@lazySingleton
class AuthRepository {
  final DioClient _dioClient;
  final TokenStorage _tokenStorage;
  final AuthNotifier _authNotifier;

  AuthRepository(this._dioClient, this._tokenStorage, this._authNotifier);

  Future<AuthResponse> login(String email, String password) async {
    final res = await _dioClient.dio.post(
      '/auth/login',
      data: {'email': email, 'password': password},
    );

    final authResponse = AuthResponse.fromJson(res.data);

    await _tokenStorage.saveToken(authResponse.token);
    _authNotifier.login();
    return authResponse;
  }
}

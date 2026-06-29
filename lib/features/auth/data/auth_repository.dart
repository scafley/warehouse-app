import 'package:warehouse_app/core/network/dio_client.dart';
import 'package:warehouse_app/core/storage/token_storage.dart';
import 'package:warehouse_app/features/auth/data/models/auth_response.dart';

class AuthRepository {
  final DioClient _dioClient;
  final TokenStorage _tokenStorage;

  AuthRepository(this._dioClient, this._tokenStorage);

  Future<AuthResponse> login(String email, String password) async {
    final res = await _dioClient.dio.post(
      '/auth/login',
      data: {'email': email, 'password': password},
    );

    final authResponse = AuthResponse.fromJson(res.data);

    await _tokenStorage.saveToken(authResponse.token);

    return authResponse;
  }
}

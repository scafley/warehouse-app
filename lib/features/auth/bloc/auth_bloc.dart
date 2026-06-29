import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:warehouse_app/features/auth/data/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(AuthInitial()) {
    on<LoginRequested>(_onLoginRequested);
  }

  Future<void> _onLoginRequested(
    LoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());

    try {
      var res = await _authRepository.login(event.email, event.password);

      emit(AuthSuccess(email: res.email, name: res.name));
    } catch (err) {
      emit(AuthFailure("Nieprawidłowe dane logowania"));
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/auth/auth_notifier.dart';
import 'package:warehouse_app/core/di/injection.dart';
import 'package:warehouse_app/features/auth/bloc/auth_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailure) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.msg)));
          }
          if (state is AuthSuccess) {
            context.go('/warehouses');
          }
        },
        builder: (context, state) {
          final isLoading = state is AuthLoading;

          return Form(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _email,
                    decoration: const InputDecoration(labelText: "E-mail"),
                  ),
                  TextFormField(
                    controller: _pass,
                    decoration: const InputDecoration(labelText: "Hasło"),
                    obscureText: true,
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () {
                            context.read<AuthBloc>().add(
                              LoginRequested(
                                email: _email.text.trim(),
                                password: _pass.text.trim(),
                              ),
                            );
                          },
                    child: isLoading
                        ? const CircularProgressIndicator()
                        : Text("Zaloguj"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

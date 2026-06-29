import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse_app/core/network/dio_client.dart';
import 'package:warehouse_app/core/storage/token_storage.dart';
import 'package:warehouse_app/features/auth/bloc/auth_bloc.dart';
import 'package:warehouse_app/features/auth/data/auth_repository.dart';
import 'package:warehouse_app/features/auth/ui/login_screen.dart';

void main() {
  final tokenStorage = TokenStorage();
  final dioClient = DioClient(tokenStorage);
  final authRepository = AuthRepository(dioClient, tokenStorage);

  runApp(MyApp(authRepository: authRepository));
}

class MyApp extends StatelessWidget {
  final AuthRepository authRepository;
  const MyApp({super.key, required this.authRepository});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warehouse',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: BlocProvider(
        create: (_) => AuthBloc(authRepository),
        child: const LoginScreen(),
      ),
    );
  }
}

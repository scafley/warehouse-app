import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse_app/core/di/injection.dart';
import 'package:warehouse_app/features/auth/bloc/auth_bloc.dart';
import 'package:warehouse_app/features/auth/ui/login_screen.dart';
import 'package:warehouse_app/features/warehouses/bloc/warehouses_bloc.dart';
import 'package:warehouse_app/features/warehouses/ui/warehouses_screen.dart';

void main() {
  configureDependecies();
  // final tokenStorage = TokenStorage();
  // final dioClient = DioClient(tokenStorage);
  // final authRepository = AuthRepository(dioClient, tokenStorage);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warehouse',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: BlocProvider(
        create: (_) =>
            getIt<WarehousesBloc>()..add(WarehousesEvent.loadWarehouses()),
        child: const WarehousesScreen(),
      ),
    );
  }
}

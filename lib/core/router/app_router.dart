import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/auth/auth_notifier.dart';
import 'package:warehouse_app/core/di/injection.dart';
import 'package:warehouse_app/features/auth/bloc/auth_bloc.dart';
import 'package:warehouse_app/features/auth/ui/login_screen.dart';
import 'package:warehouse_app/features/splash/ui/splash_screen.dart';
import 'package:warehouse_app/features/warehouses/bloc/warehouses_bloc.dart';
import 'package:warehouse_app/features/warehouses/ui/warehouses_screen.dart';

final appRouter = GoRouter(
  refreshListenable: getIt<AuthNotifier>(),
  redirect: (context, state) {
    final isLoggedIn = getIt<AuthNotifier>().isLoggedIn;
    final location = state.matchedLocation;

    if (location == '/splash') return null;

    if (!isLoggedIn && location != '/login') {
      return '/login';
    }

    if (isLoggedIn && location == '/login') {
      return '/warehouses';
    }
    return null;
  },
  initialLocation: '/splash',
  routes: [
    GoRoute(path: '/splash', builder: (context, state) => const SplashScreen()),
    GoRoute(
      path: '/login',
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthBloc>(),
        child: const LoginScreen(),
      ),
    ),
    GoRoute(
      path: '/warehouses',
      builder: (context, state) => BlocProvider(
        create: (context) =>
            getIt<WarehousesBloc>()..add(WarehousesEvent.loadWarehouses()),
        child: const WarehousesScreen(),
      ),
    ),
  ],
);

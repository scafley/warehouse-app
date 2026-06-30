import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/auth/auth_notifier.dart';
import 'package:warehouse_app/core/di/injection.dart';
import 'package:warehouse_app/core/storage/token_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkAuth();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: CircularProgressIndicator()));
  }

  Future<void> _checkAuth() async {
    final token = await getIt<TokenStorage>().getToken();
    if (!mounted) return;
    if (token == null) {
      getIt<AuthNotifier>().logout();
    } else {
      getIt<AuthNotifier>().login();
    }

    if (!mounted) return;
    context.go('/login');
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/auth/auth_notifier.dart';
import 'package:warehouse_app/core/di/injection.dart';
import 'package:warehouse_app/core/storage/token_storage.dart';
import 'package:warehouse_app/features/warehouses/bloc/warehouses_bloc.dart';

class WarehousesScreen extends StatelessWidget {
  const WarehousesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Moje magazyny"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _logout(context),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showCreateDialog(context),
        child: Icon(Icons.add),
      ),
      body: BlocBuilder<WarehousesBloc, WarehousesState>(
        builder: (context, state) {
          return state.when(
            initial: () => SizedBox.shrink(),
            loading: () => Center(child: CircularProgressIndicator()),
            loaded: (warehouses) => warehouses.isEmpty
                ? const Center(child: Text("Brak magazynów"))
                : ListView.builder(
                    itemCount: warehouses.length,
                    itemBuilder: (context, i) => ListTile(
                      title: Text(warehouses[i].name),
                      subtitle: Text("ID: ${warehouses[i].id}"),
                    ),
                  ),
            error: (msg) => Center(child: Text(msg)),
          );
        },
      ),
    );
  }

  Future<void> _logout(BuildContext context) async {
    await getIt<TokenStorage>().deleteToken();
    getIt<AuthNotifier>().logout();
    if (context.mounted) {
      context.go("/login");
    }
  }

  void _showCreateDialog(BuildContext context) {
    final nameController = TextEditingController();

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text("Nowy magazyn"),
        content: TextField(
          controller: nameController,
          decoration: InputDecoration(label: Text("Nazwa magazynu")),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text("Anuluj"),
          ),
          TextButton(
            onPressed: () {
              final name = nameController.text.trim();

              if (name.isNotEmpty) {
                context.read<WarehousesBloc>().add(
                  WarehousesEvent.createWarehouse(name),
                );
                Navigator.pop(dialogContext);
              }
            },
            child: Text("Utwórz"),
          ),
        ],
      ),
    );
  }
}

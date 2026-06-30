import 'package:injectable/injectable.dart';
import 'package:warehouse_app/core/network/dio_client.dart';
import 'package:warehouse_app/features/warehouses/data/models/warehouse.dart';

@lazySingleton
class WarehouseRepository {
  final DioClient _dioClient;

  WarehouseRepository(this._dioClient);

  Future<List<Warehouse>> getWarehouses() async {
    final res = await _dioClient.dio.get('/warehouses');

    final List data = res.data as List;

    return data
        .map((json) => Warehouse.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  Future<Warehouse> createWarehouse(String name) async {
    final res = await _dioClient.dio.post('/warehouses', data: {"name": name});

    return Warehouse.fromJson(res.data);
  }
}

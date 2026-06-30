part of 'warehouses_bloc.dart';

@freezed
sealed class WarehousesEvent with _$WarehousesEvent {
  const factory WarehousesEvent.loadWarehouses() = _LoadWarehouses;

  const factory WarehousesEvent.createWarehouse(String name) = _CreateWarehouse;
}

part of 'warehouses_bloc.dart';

@freezed
sealed class WarehousesState with _$WarehousesState {
  const factory WarehousesState.initial() = _Initial;

  const factory WarehousesState.loading() = _Loading;

  const factory WarehousesState.loaded(List<Warehouse> warehouses) = _Loaded;

  const factory WarehousesState.error(String msg) = _Error;
}

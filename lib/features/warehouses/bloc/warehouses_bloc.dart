import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:warehouse_app/features/warehouses/data/models/warehouse.dart';
import 'package:warehouse_app/features/warehouses/data/warehouse_repository.dart';

part 'warehouses_event.dart';
part 'warehouses_state.dart';
part 'warehouses_bloc.freezed.dart';

@injectable
class WarehousesBloc extends Bloc<WarehousesEvent, WarehousesState> {
  final WarehouseRepository _repository;

  WarehousesBloc(this._repository) : super(_Initial()) {
    on<_LoadWarehouses>(_loadWarehouses);
    on<_CreateWarehouse>(_createWarehouse);
  }

  Future<void> _loadWarehouses(
    _LoadWarehouses event,
    Emitter<WarehousesState> emit,
  ) async {
    emit(const WarehousesState.loading());

    try {
      final res = await _repository.getWarehouses();
      emit(WarehousesState.loaded(res));
    } catch (err) {
      emit(WarehousesState.error("Błąd wczytywania magazynów."));
    }
  }

  Future<void> _createWarehouse(
    _CreateWarehouse event,
    Emitter<WarehousesState> emit,
  ) async {
    emit(const WarehousesState.loading());

    try {
      await _repository.createWarehouse(event.name);

      final res = await _repository.getWarehouses();

      emit(WarehousesState.loaded(res));
    } catch (err) {
      emit(WarehousesState.error("Błąd przy tworzeniu magazynu."));
    }
  }
}

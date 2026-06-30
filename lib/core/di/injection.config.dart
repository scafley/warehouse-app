// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:warehouse_app/core/network/dio_client.dart' as _i885;
import 'package:warehouse_app/core/storage/token_storage.dart' as _i427;
import 'package:warehouse_app/features/auth/bloc/auth_bloc.dart' as _i803;
import 'package:warehouse_app/features/auth/data/auth_repository.dart' as _i497;
import 'package:warehouse_app/features/warehouses/bloc/warehouses_bloc.dart'
    as _i266;
import 'package:warehouse_app/features/warehouses/data/warehouse_repository.dart'
    as _i379;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i427.TokenStorage>(() => _i427.TokenStorage());
    gh.lazySingleton<_i885.DioClient>(
      () => _i885.DioClient(gh<_i427.TokenStorage>()),
    );
    gh.lazySingleton<_i497.AuthRepository>(
      () =>
          _i497.AuthRepository(gh<_i885.DioClient>(), gh<_i427.TokenStorage>()),
    );
    gh.factory<_i803.AuthBloc>(
      () => _i803.AuthBloc(gh<_i497.AuthRepository>()),
    );
    gh.lazySingleton<_i379.WarehouseRepository>(
      () => _i379.WarehouseRepository(gh<_i885.DioClient>()),
    );
    gh.factory<_i266.WarehousesBloc>(
      () => _i266.WarehousesBloc(gh<_i379.WarehouseRepository>()),
    );
    return this;
  }
}

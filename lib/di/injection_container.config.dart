// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../core/app/app_config.dart' as _i3;
import '../core/data/datasources/cache_helper.dart' as _i10;
import '../core/data/datasources/cache_helper_impl.dart' as _i11;
import '../core/data/network/network_info.dart' as _i7;
import '../features/auth/core/data/data_sources/auth_remote_data_source.dart'
    as _i12;
import '../features/auth/core/data/data_sources/auth_remote_data_source_impl.dart'
    as _i13;
import '../features/auth/core/data/services/auth_services.dart' as _i9;
import '../features/auth/login/data/repositories/login_repository_impl.dart'
    as _i15;
import '../features/auth/login/domain/repositories/login_repository.dart'
    as _i14;
import '../features/auth/login/domain/use_cases/login_use_case.dart' as _i16;
import '../features/auth/login/presentation/cubit/login_cubit.dart' as _i17;
import 'app_module.dart' as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.lazySingleton<_i3.AppConfig>(() => _i3.AppConfig());
  gh.lazySingleton<_i4.Dio>(() => appModule.dio);
  gh.lazySingleton<_i5.FirebaseAuth>(() => appModule.firebaseAuth);
  gh.lazySingleton<_i6.InternetConnectionChecker>(() => appModule.checker);
  gh.lazySingleton<_i7.NetworkInfo>(
      () => _i7.NetworkInfoImpl(get<_i6.InternetConnectionChecker>()));
  await gh.factoryAsync<_i8.SharedPreferences>(() => appModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i9.AuthServices>(
      () => _i9.AuthServicesImpl(get<_i5.FirebaseAuth>()));
  gh.singleton<_i10.CacheHelper>(
      _i11.CacheHelperImpl(get<_i8.SharedPreferences>()));
  gh.lazySingleton<_i12.AuthRemoteDataSource>(
      () => _i13.AuthRemoteDataSourceImpl(get<_i9.AuthServices>()));
  gh.lazySingleton<_i14.LoginRepository>(() => _i15.LoginRepositoryImpl(
      get<_i12.AuthRemoteDataSource>(), get<_i7.NetworkInfo>()));
  gh.lazySingleton<_i16.LoginUseCase>(
      () => _i16.LoginUseCase(get<_i14.LoginRepository>()));
  gh.factory<_i17.LoginCubit>(() => _i17.LoginCubit(get<_i16.LoginUseCase>()));
  return get;
}

class _$AppModule extends _i18.AppModule {}

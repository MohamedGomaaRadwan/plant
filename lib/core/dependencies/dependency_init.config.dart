// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../bloc/authentication/authentication_bloc.dart' as _i5;
import '../bloc/language/language_bloc.dart' as _i12;
import '../bloc/notification_updates/notification_updates_bloc.dart' as _i10;
import '../repository/auth_repository.dart' as _i4;
import '../repository/index.dart' as _i6;
import '../repository/language_repository.dart' as _i9;
import '../utilities/api_service.dart' as _i11;
import '../utilities/app_logger.dart' as _i3;
import '../utilities/index.dart' as _i7;
import 'register_module.dart' as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.AppLogger>(_i3.AppLogger());
  gh.factory<_i4.AuthRepository>(() => _i4.AuthRepository());
  gh.lazySingleton<_i5.AuthenticationBloc>(() =>
      _i5.AuthenticationBloc(get<_i6.AuthRepository>(), get<_i7.AppLogger>()));
  gh.lazySingleton<_i8.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'BaseUrl')),
      instanceName: 'Dio');
  gh.lazySingleton<_i8.Dio>(
      () => registerModule.dioInterceptor(get<String>(instanceName: 'BaseUrl')),
      instanceName: 'Interceptor');
  gh.factory<_i9.LanguageRepository>(() => _i9.LanguageRepository());
  gh.singleton<_i10.NotificationUpdatesBloc>(
      _i10.NotificationUpdatesBloc(get<_i7.AppLogger>()));
  gh.factory<_i11.ApiService>(() => _i11.ApiService(
      get<_i8.Dio>(instanceName: 'Dio'), get<_i6.AuthRepository>()));
  gh.singleton<_i12.LanguageBloc>(
      _i12.LanguageBloc(get<_i9.LanguageRepository>(), get<_i7.AppLogger>()));
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {}

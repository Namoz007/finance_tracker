// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:finance/core/di/injection.dart' as _i610;
import 'package:finance/core/network/dio_client.dart' as _i845;
import 'package:finance/core/router/app_router.dart' as _i300;
import 'package:finance/core/services/%20network_info_plus_service.dart'
    as _i498;
import 'package:finance/core/services/file_picker_service.dart' as _i896;
import 'package:finance/core/services/geolocator_service.dart' as _i306;
import 'package:finance/core/services/image_picker_service.dart' as _i35;
import 'package:finance/core/services/permission_handler_service.dart' as _i983;
import 'package:finance/core/services/phone_caller_service.dart' as _i539;
import 'package:finance/core/services/shared_preferences_service.dart' as _i524;
import 'package:finance/features/authentication/data/data_source/authentication_data_source.dart'
    as _i760;
import 'package:finance/features/authentication/data/repository/authentication_repository.dart'
    as _i418;
import 'package:finance/features/authentication/domain/usecase/forgot_password_usecase.dart'
    as _i191;
import 'package:finance/features/authentication/domain/usecase/login_usecase.dart'
    as _i30;
import 'package:finance/features/authentication/domain/usecase/register_usecase.dart'
    as _i771;
import 'package:finance/features/authentication/presentation/bloc/forgot_password/forgot_password_bloc.dart'
    as _i754;
import 'package:finance/features/authentication/presentation/bloc/login/login_bloc.dart'
    as _i571;
import 'package:finance/features/authentication/presentation/bloc/register/register_bloc.dart'
    as _i7;
import 'package:finance/features/profile/data/data_source/user_management_data_source.dart'
    as _i716;
import 'package:finance/features/profile/data/repository/user_management_repository.dart'
    as _i835;
import 'package:finance/src.dart' as _i364;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final sharedPreferencesModule = _$SharedPreferencesModule();
    final dioClient = _$DioClient();
    await gh.factoryAsync<_i364.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i364.Dio>(() => dioClient.provideDio());
    gh.lazySingleton<_i300.AppRouter>(() => _i300.AppRouter());
    gh.lazySingleton<_i306.GeolocatorService>(() => _i306.GeolocatorService());
    gh.lazySingleton<_i983.PermissionHandlerService>(
      () => _i983.PermissionHandlerService(),
    );
    gh.lazySingleton<_i539.PhoneCallerService>(
      () => _i539.PhoneCallerService(),
    );
    gh.lazySingleton<_i760.AuthenticationDataSource>(
      () => _i760.AuthenticationDataSourceImpl(dio: gh<_i364.Dio>()),
    );
    gh.lazySingleton<_i364.AuthenticationRepository>(
      () => _i418.AuthenticationRepositoryImpl(
        dataSource: gh<_i364.AuthenticationDataSource>(),
      ),
    );
    gh.lazySingleton<_i716.UserManagementDataSource>(
      () => _i716.UserManagementDataSourceImpl(dio: gh<_i364.Dio>()),
    );
    gh.lazySingleton<_i191.ForgotPasswordUseCase>(
      () => _i191.ForgotPasswordUseCase(
        repo: gh<_i364.AuthenticationRepository>(),
      ),
    );
    gh.lazySingleton<_i771.RegisterUseCase>(
      () => _i771.RegisterUseCase(repo: gh<_i364.AuthenticationRepository>()),
    );
    gh.lazySingleton<_i524.SharedPreferencesService>(
      () => _i524.SharedPreferencesService(pref: gh<_i364.SharedPreferences>()),
    );
    gh.factory<_i7.RegisterBloc>(
      () => _i7.RegisterBloc(useCase: gh<_i771.RegisterUseCase>()),
    );
    gh.lazySingleton<_i364.UserManagementRepository>(
      () => _i835.UserManagementRepositoryImpl(
        dataSource: gh<_i364.UserManagementDataSource>(),
      ),
    );
    gh.lazySingleton<_i498.NetWorkInfoPlusService>(
      () => _i498.NetWorkInfoPlusService(info: gh<_i364.NetworkInfo>()),
    );
    gh.lazySingleton<_i35.ImagePickerService>(
      () => _i35.ImagePickerService(picker: gh<_i364.ImagePicker>()),
    );
    gh.lazySingleton<_i896.FilePickerService>(
      () => _i896.FilePickerService(picker: gh<_i364.FilePicker>()),
    );
    gh.factory<_i754.ForgotPasswordBloc>(
      () =>
          _i754.ForgotPasswordBloc(useCase: gh<_i364.ForgotPasswordUseCase>()),
    );
    gh.lazySingleton<_i30.LoginUseCase>(
      () => _i30.LoginUseCase(repository: gh<_i364.AuthenticationRepository>()),
    );
    gh.factory<_i571.LoginBloc>(
      () => _i571.LoginBloc(loginUseCase: gh<_i30.LoginUseCase>()),
    );
    return this;
  }
}

class _$SharedPreferencesModule extends _i610.SharedPreferencesModule {}

class _$DioClient extends _i845.DioClient {}

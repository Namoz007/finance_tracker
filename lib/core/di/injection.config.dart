// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:finance/core/router/app_router.dart' as _i300;
import 'package:finance/core/services/%20network_info_plus_service.dart'
    as _i498;
import 'package:finance/core/services/file_picker_service.dart' as _i896;
import 'package:finance/core/services/geolocator_service.dart' as _i306;
import 'package:finance/core/services/image_picker_service.dart' as _i35;
import 'package:finance/core/services/permission_handler_service.dart' as _i983;
import 'package:finance/core/services/phone_caller_service.dart' as _i539;
import 'package:finance/features/authentication/data/data_source/authentication_data_source.dart'
    as _i760;
import 'package:finance/features/authentication/data/repository/authentication_repository.dart'
    as _i418;
import 'package:finance/features/authentication/domain/usecase/login_usecase.dart'
    as _i30;
import 'package:finance/features/authentication/presentation/bloc/login/login_bloc.dart'
    as _i571;
import 'package:finance/src.dart' as _i364;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i300.AppRouter>(() => _i300.AppRouter());
    gh.lazySingleton<_i306.GeolocatorService>(() => _i306.GeolocatorService());
    gh.lazySingleton<_i983.PermissionHandlerService>(
      () => _i983.PermissionHandlerService(),
    );
    gh.lazySingleton<_i539.PhoneCallerService>(
      () => _i539.PhoneCallerService(),
    );
    gh.lazySingleton<_i760.AuthenticationDataSource>(
      () => _i760.AuthenticationDataSourceImpl(),
    );
    gh.lazySingleton<_i364.AuthenticationRepository>(
      () => _i418.AuthenticationRepositoryImpl(
        dataSource: gh<_i364.AuthenticationDataSource>(),
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
    gh.lazySingleton<_i30.LoginUseCase>(
      () => _i30.LoginUseCase(repository: gh<_i364.AuthenticationRepository>()),
    );
    gh.factory<_i571.LoginBloc>(
      () => _i571.LoginBloc(loginUseCase: gh<_i30.LoginUseCase>()),
    );
    return this;
  }
}

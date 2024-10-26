// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../connection/api/api.dart' as _i149;
import '../connection/controllers/login_controller.dart' as _i421;
import '../connection/storage/storage.dart' as _i741;
import '../connection/ws/ws_controller.dart' as _i21;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i149.Api>(() => _i149.Api());
    gh.singletonAsync<_i421.LoginController>(
        () => _i421.LoginController.create());
    gh.singleton<_i741.Storage>(() => _i741.Storage());
    gh.singleton<_i21.WsController>(() => _i21.WsController());
    return this;
  }
}

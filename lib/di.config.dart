// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:grbl_homing_tool/domain/serial_port_repository.dart' as _i3;
import 'package:grbl_homing_tool/pages/connection/cubit/connection_page_cubit.dart'
    as _i4;
import 'package:grbl_homing_tool/pages/controls/cubit/controls_page_cubit.dart'
    as _i5;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.SerialPortRepository>(() => _i3.SerialPortRepository());
    gh.factory<_i4.ConnectionPageCubit>(
        () => _i4.ConnectionPageCubit(gh<_i3.SerialPortRepository>()));
    gh.factory<_i5.ControlsPageCubit>(
        () => _i5.ControlsPageCubit(gh<_i3.SerialPortRepository>()));
    return this;
  }
}

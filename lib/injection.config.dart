// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:indemand_ticket_booking/application/auth/auth_bloc.dart' as _i9;
import 'package:indemand_ticket_booking/application/dashboard/base_bloc.dart'
    as _i3;
import 'package:indemand_ticket_booking/application/Events/event_bloc.dart'
    as _i10;
import 'package:indemand_ticket_booking/application/timer/timer_bloc.dart'
    as _i8;
import 'package:indemand_ticket_booking/domain/auth/i_auth_facade.dart' as _i4;
import 'package:indemand_ticket_booking/domain/events/i_events_facade.dart'
    as _i6;
import 'package:indemand_ticket_booking/infrastructure/auth/auth_facade.dart'
    as _i5;
import 'package:indemand_ticket_booking/infrastructure/events/events_facade.dart'
    as _i7;
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
    gh.factory<_i3.BaseBloc>(() => _i3.BaseBloc());
    gh.lazySingleton<_i4.IAuthFacade>(() => _i5.AuthFacade());
    gh.lazySingleton<_i6.IEventsFacade>(() => _i7.EventsFacade());
    gh.factory<_i8.TimerBloc>(() => _i8.TimerBloc());
    gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(gh<_i4.IAuthFacade>()));
    gh.factory<_i10.EventsBloc>(() => _i10.EventsBloc(gh<_i6.IEventsFacade>()));
    return this;
  }
}

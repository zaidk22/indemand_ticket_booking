import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'base_event.dart';
part 'base_state.dart';
part 'base_bloc.freezed.dart';


@injectable
class BaseBloc extends Bloc<BaseEvent, BaseState> {
  BaseBloc() : super(BaseState.intial()) {
    on<BaseEvent>((event, emit) {
      emit.call(state.copyWith(selectedNavBarIndex: event.index));
    });
  }
}


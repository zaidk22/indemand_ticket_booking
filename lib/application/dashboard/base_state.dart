part of 'base_bloc.dart';

@freezed
class BaseState with _$BaseState {
  const factory BaseState({
    required bool isLoading,
    required int selectedNavBarIndex,
   
  }) = _BaseState;

  factory BaseState.intial() => const BaseState(
        isLoading: false,
        selectedNavBarIndex: 0,
      
      );

}

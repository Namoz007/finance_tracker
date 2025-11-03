part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(null) List<MainNavBarMenuEntity>? menus,
    @Default(null) int? menuIndex,
}) = _MainState;

  @override
  noSuchMethod(Invocation invocation) {
    // TODO: implement noSuchMethod
    return super.noSuchMethod(invocation);
  }


}

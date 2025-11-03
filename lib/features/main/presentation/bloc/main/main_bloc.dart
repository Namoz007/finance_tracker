import 'package:finance/src.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

@lazySingleton
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState()) {
    on<_Started>(_started);
    on<_GetMenuWithLink>(_getMenuWithLink);
    on<_UpdateIndex>(_updateIndex);
  }

  void _updateIndex(_UpdateIndex event,emit) => emit(state.copyWith(menuIndex: event.index));

  void _started(_Started event, emit) =>
      emit(state.copyWith(menus: event.menus, menuIndex: 0));

  void _getMenuWithLink(_GetMenuWithLink event, emit) {
    if (state.menus != null) {
      final index = state.menus!.indexWhere((value) => value.key == event.key);
      emit(
        state.copyWith(
          menuIndex: index == -1 ? 0 : index,
        ),
      );
    }
  }
}

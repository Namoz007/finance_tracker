part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
   factory MainEvent.started({required List<MainNavBarMenuEntity> menus}) = _Started;
   factory MainEvent.getMenuWithLink({required String key}) = _GetMenuWithLink;
   factory MainEvent.updateIndex({required int index}) = _UpdateIndex;
}

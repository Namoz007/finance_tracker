import 'package:finance/src.dart';
part 'main_nav_bar_menu_model.freezed.dart';

@freezed
class MainNavBarMenuModel extends MainNavBarMenuEntity
    with _$MainNavBarMenuModel {
  factory MainNavBarMenuModel({
    required String name,
    required IconData icon,
    required Widget page,
    required String key,
    required VoidCallback onTap,
  }) = _MainNavBarMenuModel;

  MainNavBarMenuModel._() : super(name: '',icon: Icons.circle,page: Scaffold(),key: "",onTap: (){});

}

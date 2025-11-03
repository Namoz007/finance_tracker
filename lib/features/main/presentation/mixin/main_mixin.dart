import 'package:finance/src.dart';

mixin MainMixin<T extends StatefulWidget> on State<T> {
  late final List<MainNavBarMenuEntity> menus;

  @override
  void initState() {
    super.initState();
    menus = [
      MainNavBarMenuModel(name: "Home", icon: Icons.home, page: HomeScreen(),key: "home", onTap: () => context.go(AppRoutes.main,extra: "home")),
      MainNavBarMenuModel(name: "Add expense", icon: Icons.add_circle_outline,page: SizedBox(), key: "add_expenses", onTap: (){}),
      MainNavBarMenuModel(name: "Expenses", icon: Icons.list,page: SizedBox(), key: "expenses", onTap: (){}),
      MainNavBarMenuModel(name: "Statistics", icon: Icons.add_chart,page: SizedBox(), key: "statistics", onTap: (){}),
      MainNavBarMenuModel(name: "Profile", icon: Icons.person,page: ProfileScreen(), key: "profile", onTap: (){}),
    ];
    context.read<MainBloc>().add(MainEvent.started(menus: menus));
    context.read<MainBloc>().add(MainEvent.getMenuWithLink(key: (widget as MainScreen).link ?? "home"));
  }

}
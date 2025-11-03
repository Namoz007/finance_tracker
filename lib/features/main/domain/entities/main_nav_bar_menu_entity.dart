import 'package:finance/src.dart';

abstract class MainNavBarMenuEntity {
  String name;
  IconData icon;
  Widget page;
  String key;
  VoidCallback onTap;

  MainNavBarMenuEntity({
    required this.name,
    required this.icon,
    required this.page,
    required this.key,
    required this.onTap,
  });
}

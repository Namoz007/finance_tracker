import '../../src.dart';

@lazySingleton
class AppRouter{
  final GoRoute _route = GoRoute(path: AppRoutes.base);
}
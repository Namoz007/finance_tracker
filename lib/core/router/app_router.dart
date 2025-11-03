import '../../src.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@lazySingleton
class AppRouter {
  static GoRouter config = GoRouter(
    initialLocation: AppRoutes.splash,
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(path: AppRoutes.splash,builder: (context,state) => SplashScreen()),
      GoRoute(path: AppRoutes.login,builder: (context,state) => LoginScreen()),
      GoRoute(path: AppRoutes.registration,builder: (context,state) => RegistrationScreen()),
      GoRoute(path: AppRoutes.forgotPassword,builder: (context,state) => ForgotPasswordScreen()),
      GoRoute(path: AppRoutes.main,builder: (context,state) => MainScreen(link: state.extra as String?,)),
    ],
  );
}

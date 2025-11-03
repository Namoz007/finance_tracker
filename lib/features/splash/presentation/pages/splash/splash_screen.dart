import 'package:finance/src.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SplashMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<UserManagementBloc,UserManagementState>(
        listener: (context, state) {
          if(!state.haveAccount){
            Future.delayed(Duration(seconds: 2),() => context.go(AppRoutes.login));

          }

          if(!state.user.empty){
            Future.delayed(Duration(seconds: 2),() => context.go(AppRoutes.main,extra: "profile"));
          }
        },
        builder: (context, state) {
          return Center(
            child: Text(
              "Welcome to Finance Tracker",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          );
        },
      ).paddingSymmetric(horizontal: 50),
    );
  }
}

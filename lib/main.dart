import 'package:finance/src.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  DefaultFirebaseOptions.currentPlatform;
  await configureDependencies();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.config,
      debugShowCheckedModeBanner: false,
      title: "Finance Tracker",
    );
  }
}

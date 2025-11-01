import '../../src.dart';

final sl = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => sl.init();

import 'dart:async';
import 'package:finance/src.dart';

mixin SplashMixin<T extends StatefulWidget> on State<T> {

  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(seconds: 3),() => context.go(AppRoutes.login));
    context.read<UserManagementBloc>().add(UserManagementEvent.started());
  }
}

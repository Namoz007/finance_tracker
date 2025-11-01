import '../../src.dart';

extension ContextExtension on BuildContext{
  MediaQueryData get mq => MediaQuery.of(this);

  double get w => mq.size.width;

  double get h => mq.size.height;

  double get pTop => mq.padding.top;

  double get pBottom => mq.padding.bottom;

  double get pRight => mq.padding.right;

  double get pLeft => mq.padding.left;


  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => Theme.of(this).colorScheme;


  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  AppThemeColors get color => Theme.of(this).extension<AppThemeColors>()!;

  AppThemeSvgs get appSvgs => Theme.of(this).extension<AppThemeSvgs>()!;
}
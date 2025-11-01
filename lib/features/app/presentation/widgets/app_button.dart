import 'package:finance/src.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.prefix,
    this.suffix,
    this.enable,
    this.textStyle,
    this.textColor,
    this.bgColor,
    this.borderRadius,
    this.borderSide,
    this.isLoading,
    this.enableButton,
  });

  final VoidCallback onPressed;
  final String text;
  final Widget? prefix;
  final Widget? suffix;
  final bool? enable;
  final TextStyle? textStyle;
  final Color? textColor;
  final Color? bgColor;
  final double? borderRadius;
  final BorderSide? borderSide;
  final bool? isLoading;
  final bool? enableButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: context.w,
      child: FilledButton(
        onPressed:
        isLoading ?? false
            ? null
            : enableButton ?? true
            ? onPressed
            : null,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(bgColor),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                borderRadius ?? 20,
              ),
              side: borderSide ?? BorderSide.none,
            ),
          ),
        ),
        child:
        isLoading ?? false
            ? Center(child: CircularProgressIndicator.adaptive())
            : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefix != null) prefix!,
            Text(
              text,
              style:
              textStyle,
            ),
            if (suffix != null) suffix!,
          ],
        ),
      ),
    );
  }
}
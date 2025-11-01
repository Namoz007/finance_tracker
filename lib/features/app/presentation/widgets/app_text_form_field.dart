import 'package:finance/src.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.controller,
    this.prefix,
    this.suffix,
    required this.hintText,
    this.formatters,
    required this.keyBoardType,
    this.onTap,
    this.onChanged,
    this.validator,
    this.obscureText,
    this.hasErrorText,
    this.hintTextStyle,
    this.enabled,
    this.constraints,
    this.border,
    this.filled,
    this.fillColor,
    this.style,
    this.contentPadding,
    this.action
  });

  final TextEditingController controller;
  final Widget? prefix;
  final Widget? suffix;
  final String hintText;
  final List<TextInputFormatter>? formatters;
  final TextInputType keyBoardType;
  final VoidCallback? onTap;
  final Function(String? value)? onChanged;
  final FormFieldValidator<String>? validator;
  final bool? obscureText;
  final bool? hasErrorText;
  final TextStyle? hintTextStyle;
  final bool? enabled;
  final BoxConstraints? constraints;
  final InputBorder? border;
  final bool? filled;
  final Color? fillColor;
  final TextStyle? style;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputAction? action;


  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        enabled: enabled ?? true,
        inputFormatters: formatters,
        keyboardType: keyBoardType,
        validator: validator,
        onChanged: onChanged,
        onTap: onTap,
        obscuringCharacter: "*",
        keyboardAppearance: Theme.of(context).brightness,
        // style:
        textInputAction: action ?? TextInputAction.done,
        decoration: InputDecoration(
          enabled: true,
          hintText: hintText,
          prefixIcon: prefix,
          suffixIcon: suffix,
          errorMaxLines: 1,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          )
          // hintStyle: hintTextStyle ?? Theme.of(context).inputDecorationTheme.hintStyle,
          // filled: filled ?? Theme.of(context).inputDecorationTheme.filled,
          // fillColor: fillColor ?? Theme.of(context).inputDecorationTheme.fillColor,
          // constraints: constraints,
          // suffixIconConstraints:
          // Theme.of(context).inputDecorationTheme.suffixIconConstraints,
          // prefixIconConstraints:
          // Theme.of(context).inputDecorationTheme.prefixIconConstraints,
          // contentPadding: contentPadding ?? Theme.of(context).inputDecorationTheme.contentPadding,
          // focusedErrorBorder:
          // Theme.of(context).inputDecorationTheme.focusedErrorBorder,
          // enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
          // disabledBorder: Theme.of(context).inputDecorationTheme.disabledBorder,
          // focusedBorder:
          // hasErrorText ?? false
          //     ? Theme.of(context).inputDecorationTheme.errorBorder
          //     : Theme.of(context).inputDecorationTheme.focusedBorder,
          // border: border ?? Theme.of(context).inputDecorationTheme.border,
        ),
      ),
    );
  }
}

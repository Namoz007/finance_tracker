import 'package:finance/src.dart';

class AppErrorDialog extends StatelessWidget {
  String? error;
  AppErrorDialog({super.key, this.error});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 200,
        margin: EdgeInsets.symmetric(horizontal: 0),
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.cFFFFFF,
          // color: Colors.red,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline, color: Colors.red),
            SizedBox(height: 10),
            Text(
              error ?? "Something went wrong!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.red,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 12),
            AppButton(onPressed: () => Navigator.pop(context), text: "Continue"),
          ],
        ),
      ),
    );
  }
}

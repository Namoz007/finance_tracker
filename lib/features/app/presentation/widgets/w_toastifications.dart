import "package:finance/src.dart";

showErrorToast(String? message) {
  toastification.show(
    context: navigatorKey.currentContext,
    type: ToastificationType.error,
    style: ToastificationStyle.fillColored,
    title: Text(message ?? "Something went wrong!", maxLines: 5),
    autoCloseDuration: Duration(seconds: 3),
  );
}

showSuccessToast(String message) {
  toastification.show(
    context: navigatorKey.currentContext,
    type: ToastificationType.success,
    style: ToastificationStyle.fillColored,
    title: Text(message, maxLines: 5),
    autoCloseDuration: Duration(seconds: 3),
  );
}

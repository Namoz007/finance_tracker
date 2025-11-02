import 'package:finance/src.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<ForgotPasswordBloc>(),
        child: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
          listener: (context, state) {
            if (state.userExists) {
              showSuccessToast("We send link to email for reset password");
              context.go(AppRoutes.login);
            }

            if (state.status == RequestStatus.error) {
              if (state.uiStatus == UIResponseStatus.dialog) {
                showDialog(
                  context: context,
                  builder: (context) =>
                      AppErrorDialog(error: state.error?.message),
                  barrierDismissible: false,
                ).then((value) => context.read<ForgotPasswordBloc>().add(ForgotPasswordEvent.closeUIStatus()));
              } else if (state.uiStatus == UIResponseStatus.toast) {
                showErrorToast(state.error?.message);
              }
            }
          },
          builder: (context, state) {
            return ListView(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                SizedBox(height: context.pTop + 100),
                Center(
                  child: Text(
                    "Forgot password",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 40),
                AppTextFormField(
                  controller: state.emailController,
                  hintText: "Enter email for reset password",
                  keyBoardType: TextInputType.text,
                ),
                SizedBox(height: 20),
                AppButton(
                  onPressed: () => context.read<ForgotPasswordBloc>().add(
                    ForgotPasswordEvent.checkEmail(),
                  ),
                  text: "Check email",
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

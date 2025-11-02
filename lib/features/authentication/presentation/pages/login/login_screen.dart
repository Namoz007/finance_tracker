import 'package:finance/features/app/presentation/widgets/app_button.dart';
import 'package:finance/src.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginBloc>(),
      child: Scaffold(
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {

            if(state.authenticated){
              context.go(AppRoutes.splash);
            }

            if (state.error != null && state.uiStatus != UIResponseStatus.none) {
              if (state.uiStatus == UIResponseStatus.toast) {
                showErrorToast(state.error!.message);
              } else if (state.uiStatus == UIResponseStatus.dialog) {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => AppErrorDialog(
                    error: state.error!.message,
                  ),
                ).then((value) => context.read<LoginBloc>().add(LoginEvent.closeUIStatus()));
              }
            }
          },
          builder: (context, state) {
            return ListView(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                SizedBox(height: context.pTop + 100),
                Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 40),
                AppTextFormField(
                  controller: state.emailController,
                  hintText: "email",
                  keyBoardType: TextInputType.text,
                ),
                SizedBox(height: 20),
                AppTextFormField(
                  controller: state.passwordController,
                  hintText: "Password",
                  keyBoardType: TextInputType.text,
                  //
                ),
                SizedBox(height: 6),
                GestureDetector(
                  onTap: () => context.go(AppRoutes.forgotPassword),
                  child: Text(
                    "Forgot password",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                AppButton(
                  onPressed: () =>
                      context.read<LoginBloc>().add(LoginEvent.login()),
                  text: "Login",
                ),
                SizedBox(height: 10,),
                Center(
                  child: GestureDetector(
                    onTap: () => context.go(AppRoutes.registration),
                    child: Text("You haven't account?",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.blue),),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

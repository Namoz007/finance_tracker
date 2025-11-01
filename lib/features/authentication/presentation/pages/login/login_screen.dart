import 'package:finance/features/app/presentation/widgets/app_button.dart';
import 'package:finance/src.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginBloc>(),
      child: Scaffold(
        body: BlocBuilder<LoginBloc, LoginState>(
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
                AppButton(onPressed: () =>
                    context.read<LoginBloc>().add(LoginEvent.login()), text: "Login"),
              ],
            );
          },
        ),
      ),
    );
  }
}

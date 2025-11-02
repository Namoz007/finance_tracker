import 'package:finance/features/authentication/presentation/bloc/register/register_bloc.dart';
import 'package:finance/src.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<RegisterBloc>(),
        child: BlocConsumer<RegisterBloc, RegisterState>(
          listener: (context, state) {
            if (state.status == RequestStatus.error) {
              if (state.uiStatus == UIResponseStatus.toast) {
                showErrorToast(state.error?.message);
              } else if (state.uiStatus == UIResponseStatus.dialog) {
                showDialog(
                  context: context,
                  builder: (context) =>
                      AppErrorDialog(error: state.error?.message),
                ).then(
                  (value) => context.read<RegisterBloc>().add(
                    RegisterEvent.closeUIStatus(),
                  ),
                );
              }
            }

            if (state.authenticated) {
              context.go(AppRoutes.splash);
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
                    "Registration",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 40),
                AppTextFormField(
                  controller: state.nameController,
                  hintText: "Full name",
                  keyBoardType: TextInputType.text,
                ),
                SizedBox(height: 20),
                AppTextFormField(
                  controller: state.emailController,
                  hintText: "Email",
                  keyBoardType: TextInputType.text,
                ),
                SizedBox(height: 20),
                AppTextFormField(
                  controller: state.passwordController,
                  hintText: "Password",
                  keyBoardType: TextInputType.text,
                ),
                SizedBox(height: 50),
                AppButton(
                  onPressed: () => context.read<RegisterBloc>().add(
                    RegisterEvent.registration(),
                  ),
                  text: "Registration",
                ),
                SizedBox(height: 10),
                Center(
                  child: GestureDetector(
                    onTap: () => context.go(AppRoutes.login),
                    child: Text(
                      "You have account?",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

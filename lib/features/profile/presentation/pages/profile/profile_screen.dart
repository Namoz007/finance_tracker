import 'package:finance/src.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<UserManagementBloc, UserManagementState>(
        listener: (context, state) {
          if (state.error != null && state.uiStatus != UIResponseStatus.none) {
            if (state.uiStatus == UIResponseStatus.toast) {
              showErrorToast(state.error?.message);
            } else if (state.uiStatus == UIResponseStatus.dialog) {
              showDialog(
                context: context,
                builder: (context) =>
                    AppErrorDialog(error: state.error?.message),
                barrierDismissible: false,
              ).then(
                (value) => context.read<UserManagementBloc>().add(
                  UserManagementEvent.closeUIStatus(),
                ),
              );
            }
          }
        },
        builder: (context, state) {
          return ListView(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            padding: EdgeInsets.only(top: context.pTop, left: 20, right: 20),
            children: [
              if (state.user.avatar != null)
                Center(
                  child: GestureDetector(
                    onTap: () => context.read<UserManagementBloc>().add(
                      UserManagementEvent.updateAvatar(),
                    ),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(state.user.avatar!),
                        ),
                      ),
                    ),
                  ),
                ),

              if (state.user.avatar == null)
                Center(child: GestureDetector(
                  onTap: () => context.read<UserManagementBloc>().add(UserManagementEvent.updateAvatar()),
                    child: Icon(Icons.person_pin, size: 80))),
              SizedBox(height: 40),
              WProfileInfoTile(
                icon: Icons.email_outlined,
                title: "E-mail",
                info: state.user.email,
              ),
              SizedBox(height: 20),
              WProfileInfoTile(
                icon: Icons.person,
                title: "Full name",
                info: state.user.fullName,
              ),
              SizedBox(height: 20),
              WProfileInfoTile(
                icon: Icons.description,
                title: "Bio",
                info: state.user.bio ?? "Not available",
              ),
            ],
          );
        },
      ),
    );
  }
}

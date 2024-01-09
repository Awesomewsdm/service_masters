import "package:service_masters/common/barrels.dart";
import "package:service_masters/profile/bloc/profile_bloc.dart";

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state is ProfileSuccess) {
          context.router.pushAndPopUntil(
            const SignInRoute(),
            predicate: (route) => false,
          );
        } else if (state is ProfileFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
              backgroundColor: Colors.red,
            ),
          );
        } else if (state is ProfileLoading) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Loading..."),
              backgroundColor: Colors.green,
            ),
          );
        } else if (state is ProfileSignOut) {
          context.router.pushAndPopUntil(
            const SignInRoute(),
            predicate: (route) => false,
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Something went wrong"),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: tPrimaryColor,
          title: const PrimaryTextWidget(
            fontColor: tWhiteColor,
            text: tProfile,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          actions: const [ThemeToggleButton()],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(10),
              GestureDetector(
                onTap: () => context.router.push(const EditProfileRoute()),
                child: Stack(
                  children: [
                    ProfileImageWidget(
                      height: 105,
                      width: 105,
                      imageString: tPic,
                      border: Border.all(color: tPrimaryColor, width: 5),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: tPrimaryColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Icon(
                          CustomIcons.edit,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(10),
              Text(
                "Awesome Wisdom",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF4CAF50),
                ),
              ),
              const Text("awesome@awesome.com"),
              const Gap(10),
              const ProfileMenuHeadings(
                label: "GENERAL",
              ),
              const ProfileMenuListCardItem(
                icon: CustomIcons.wallet_1,
                label: "Wallet Balance",
              ),
              const ProfileMenuListCardItem(
                icon: CustomIcons.heart2,
                label: "Favorite Services",
              ),
              const ProfileMenuListCardItem(
                icon: CustomIcons.heart_1,
                label: "Favorite Providers",
              ),
              ProfileMenuListCardItem(
                icon: CustomIcons.lock,
                label: "Change Password",
                onTap: () => context.router.push(ChangePasswordRoute()),
              ),
              const ProfileMenuListCardItem(
                icon: CustomIcons.list,
                label: "History",
              ),
              const Gap(
                10,
              ),
              const ProfileMenuHeadings(
                label: "ABOUT",
              ),
              ProfileMenuListCardItem(
                icon: CustomIcons.info,
                label: "About App",
                onTap: () {
                  context.router.push(const AboutRoute());
                },
              ),
              const ProfileMenuListCardItem(
                icon: CustomIcons.shield,
                label: "Privacy Policy",
              ),
              const ProfileMenuListCardItem(
                icon: CustomIcons.fileCheck,
                label: "Terms and Conditions",
              ),
              const ProfileMenuListCardItem(
                icon: CustomIcons.handHoldingHeart,
                label: "Help & Support",
              ),
              const ProfileMenuListCardItem(
                icon: CustomIcons.call,
                label: "Customer Care",
              ),
              const ProfileMenuListCardItem(
                icon: CustomIcons.share,
                label: "Share App",
              ),
              const ProfileMenuHeadings(
                label: "Others",
              ),
              TextButton(
                onPressed: () {
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        title: Text(
                          "Sign Out?",
                          style: context.textTheme.titleLarge!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        content: Text(
                          "Are you sure you want to sign out of the app?",
                          style: context.textTheme.titleSmall!.copyWith(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: PrimaryButton(
                                  onPressed: () {
                                    context.read<ProfileBloc>().add(
                                          const ProfileSignOut(),
                                        );
                                  },
                                  label: "Confirm",
                                  labelColor: context.theme.primaryColor,
                                  backgroundColor: const Color(0xFFFFFFFF),
                                ),
                              ),
                              const Gap(10),
                              Expanded(
                                child: PrimaryButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  labelColor:
                                      context.theme.scaffoldBackgroundColor,
                                  label: "Cancel",
                                  backgroundColor: context.theme.primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text(
                  "Sign Out",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuHeadings extends StatelessWidget {
  const ProfileMenuHeadings({
    required this.label,
    super.key,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 35,
      width: double.infinity,
      color: const Color.fromARGB(45, 52, 96, 2),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Text(
          label,
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

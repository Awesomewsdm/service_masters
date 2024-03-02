import "package:service_masters/common/barrels.dart";
import "package:service_masters/profile/components/profile_headings.dart";
import "package:share_plus/share_plus.dart";

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state.user.isEmpty) {
          context.router.pushAndPopUntil(
            const SignInRoute(),
            predicate: (route) => false,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: "Profile".text,
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
                "${user.firstName}${user.lastName}",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF4CAF50),
                ),
              ),
              Text(user.email.toString()),
              const Gap(10),
              const ProfileMenuHeadings(
                label: "GENERAL",
              ),
              ProfileMenuListCardItem(
                icon: CustomIcons.wallet_1,
                label: "Wallet Balance",
                onTap: () => context.router.push(const WalletBalnceRoute()),
              ),
              const ProfileMenuListCardItem(
                icon: CustomIcons.heart2,
                label: "Favorite Services",
              ),
              const ProfileMenuListCardItem(
                icon: CustomIcons.heart_1,
                label: "Favorite Providers",
                // onTap: () => context.router.push(const Fav()),
              ),
              ProfileMenuListCardItem(
                icon: CustomIcons.lock,
                label: "Change Password",
                onTap: () => context.router.push(
                  ChangePasswordRoute(),
                ),
              ),
              ProfileMenuListCardItem(
                icon: CustomIcons.list,
                label: "History",
                onTap: () => context.router.push(const HistoryRoute()),
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
              ProfileMenuListCardItem(
                icon: CustomIcons.shield,
                label: "Privacy Policy",
                onTap: () => context.router.push(const PrivacyPolicyRoute()),
              ),
              ProfileMenuListCardItem(
                icon: CustomIcons.fileCheck,
                label: "Terms and Conditions",
                onTap: () =>
                    context.router.push(const TermasAndConditionsRoute()),
              ),
              ProfileMenuListCardItem(
                icon: CustomIcons.call,
                label: "Help Center",
                onTap: () {
                  context.router.push(const FAQsRoute());
                },
              ),
              ProfileMenuListCardItem(
                icon: CustomIcons.handHoldingHeart,
                label: "Help & Support",
                onTap: () => context.router.push(
                  const HistoryRoute(),
                ),
              ),
              ProfileMenuListCardItem(
                icon: CustomIcons.share,
                label: "Share App",
                onTap: () => Share.share("text"),
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
                                    context.read<AppBloc>().add(
                                          const AppLogoutRequested(),
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

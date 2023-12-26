import 'package:home_service_app/common/barrels.dart';
import 'package:home_service_app/about_app/about_screen.dart';
import 'package:home_service_app/profile/components/profile_menu_list_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EditProfileScreen())),
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
                        LineIcons.pen,
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
                  color: const Color(0xFF4CAF50)),
            ),
            const Text("awesome@awesome.com"),
            const SizedBox(
              height: 10,
            ),
            const ProfileMenuHeadings(
              label: "GENERAL",
            ),
            const ProfileMenuListCardItem(
              icon: LineIcons.wallet,
              label: "Wallet Balance",
            ),
            const ProfileMenuListCardItem(
                icon: LineIcons.heart, label: "Favorite Services"),
            const ProfileMenuListCardItem(
                icon: LineIcons.heart, label: "Favorite Providers"),
            const ProfileMenuListCardItem(
                icon: LineIcons.lock, label: "Change Password"),
            const ProfileMenuListCardItem(
                icon: LineIcons.list, label: "History"),
            const SizedBox(
              height: 10,
            ),
            const ProfileMenuHeadings(
              label: "ABOUT",
            ),
            ProfileMenuListCardItem(
              icon: LineIcons.infoCircle,
              label: "About App",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutScreen()),
                );
              },
            ),
            const ProfileMenuListCardItem(
                icon: LineIcons.userShield, label: "Privacy Policy"),
            const ProfileMenuListCardItem(
                icon: LineIcons.blog, label: "Terms and Conditions"),
            const ProfileMenuListCardItem(
                icon: LineIcons.helpingHands, label: "Help & Support"),
            const ProfileMenuListCardItem(
                icon: LineIcons.phone, label: "Customer Care"),
            const ProfileMenuListCardItem(
                icon: LineIcons.share, label: "Share App"),
            const ProfileMenuHeadings(
              label: "Others",
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: const Text(
                  "Logout",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}

class ProfileMenuHeadings extends StatelessWidget {
  const ProfileMenuHeadings({
    super.key,
    required this.label,
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

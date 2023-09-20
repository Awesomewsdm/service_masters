import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/theme_toggle_button.dart';
import 'package:home_service_app/src/screens/auth_screens/sign_up_screen.dart';
import 'package:home_service_app/src/screens/edit_profile_screen.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';
import 'package:line_icons/line_icons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: tWhiteColor,
        title: const Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: tPrimaryColor, width: 5),
                    ),
                    height: 105,
                    width: 105,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(tPic),
                      ),
                    ),
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
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
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
            const ProfileMenuItems(
              icon: LineIcons.wallet,
              label: "Wallet Balance",
            ),
            const ProfileMenuItems(
                icon: LineIcons.heart, label: "Favorite Services"),
            const ProfileMenuItems(
                icon: LineIcons.heart, label: "Favorite Providers"),
            const ProfileMenuItems(
                icon: LineIcons.lock, label: "Change Password"),
            const ProfileMenuItems(icon: LineIcons.list, label: "History"),
            const SizedBox(
              height: 10,
            ),
            const ProfileMenuHeadings(
              label: "ABOUT APP",
            ),
            const ProfileMenuItems(
                icon: LineIcons.infoCircle, label: "About App "),
            const ProfileMenuItems(
                icon: LineIcons.userShield, label: "Privacy Policy "),
            const ProfileMenuItems(
                icon: LineIcons.blog, label: "Terms and Conditions "),
            const ProfileMenuItems(
                icon: LineIcons.helpingHands, label: "Help & Support"),
            const ProfileMenuItems(
                icon: LineIcons.phone, label: "Customer Care"),
            const ProfileMenuItems(icon: LineIcons.share, label: "Share App"),
            const ProfileMenuHeadings(
              label: "Others",
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  SignUpScreen()));
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

class ProfileMenuItems extends StatelessWidget {
  const ProfileMenuItems({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
  });
  final IconData icon;
  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 20),
          Text(
            label,
            style: GoogleFonts.poppins(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Icon(Icons.chevron_right_rounded)
        ],
      ),
    );
  }
}

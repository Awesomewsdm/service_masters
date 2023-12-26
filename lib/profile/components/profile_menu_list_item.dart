import 'package:home_service_app/common/barrels.dart';

class ProfileMenuListCardItem extends StatelessWidget {
  const ProfileMenuListCardItem({
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
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 20),
            Text(
              label,
              style: GoogleFonts.poppins(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            const Icon(Icons.chevron_right_rounded)
          ],
        ),
      ),
    );
  }
}

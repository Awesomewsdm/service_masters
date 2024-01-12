import "package:service_masters/common/barrels.dart";

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

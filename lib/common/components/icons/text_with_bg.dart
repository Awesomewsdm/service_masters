import "package:service_masters/common/barrels.dart";

class TextWithBg extends StatelessWidget {
  const TextWithBg({
    required this.bgColor, required this.label, super.key,
  });
  final Color bgColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(100),),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

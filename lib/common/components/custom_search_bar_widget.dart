import "package:service_masters/common/barrels.dart";

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({required this.onTap, super.key});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: tPrimaryColor),
      ),
      child: Center(
        child: TextField(
          readOnly: true,
          onTap: onTap,
          decoration: InputDecoration(
            hintText: "Search for services...",
            hintStyle: const TextStyle(color: Colors.grey),
            suffixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }
}

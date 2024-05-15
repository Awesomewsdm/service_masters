import "package:service_masters/common/barrels.dart";

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 2,
            color: Colors.grey[300],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text("Or"),
        ),
        Expanded(
          child: Divider(
            thickness: 2,
            color: Colors.grey[300],
          ),
        ),
      ],
    );
  }
}

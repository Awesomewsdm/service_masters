import "package:service_masters/common/barrels.dart";

class TitleWithDescriptionWidget extends StatelessWidget {
  const TitleWithDescriptionWidget({
    required this.description,
    required this.title,
    super.key,
  });
  final String description;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrimaryTextWidget(
            text: title,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(description),
        ],
      ),
    );
  }
}

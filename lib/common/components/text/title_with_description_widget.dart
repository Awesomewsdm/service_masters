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
          Text(
            title,
            style: context.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(description),
        ],
      ),
    );
  }
}

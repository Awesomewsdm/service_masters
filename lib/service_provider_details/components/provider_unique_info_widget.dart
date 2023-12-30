import "package:home_service_app/common/barrels.dart";

class ProviderUniqueInfoWidget extends StatelessWidget {
  const ProviderUniqueInfoWidget({
    required this.textTheme,
    required this.title,
    required this.subtitle,
    required this.icon,
    super.key,
  });

  final TextTheme textTheme;
  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Gap(20),
        Icon(
          icon,
          color: Colors.grey,
          size: 30,
        ),
        const Gap(15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: textTheme.bodyMedium!
                  .copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            Text(
              subtitle,
              style: textTheme.bodyLarge!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

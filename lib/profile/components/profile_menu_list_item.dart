import "package:service_masters/common/barrels.dart";

class ProfileMenuListCardItem extends StatelessWidget {
  const ProfileMenuListCardItem({
    required this.icon,
    required this.label,
    super.key,
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
            const Gap(10),
            Text(
              label,
              style: context.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const Icon(Icons.chevron_right_rounded),
          ],
        ),
      ),
    );
  }
}

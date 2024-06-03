import "package:flutter_svg/svg.dart";
import "package:service_masters/common/barrels.dart";

class EmptyStateWithActionWidget extends StatelessWidget {
  const EmptyStateWithActionWidget({
    required this.title,
    required this.imageString,
    required this.subtitle,
    required this.buttonLabel,
    super.key,
    this.onPressed,
  });

  final String title;
  final String imageString;
  final String subtitle;
  final String buttonLabel;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imageString,
          height: 180,
        ),
        const Gap(10),
        Text(
          title,
          style: context.textTheme.bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: context.textTheme.bodyLarge,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: PrimaryButton(
            label: buttonLabel,
            onPressed: onPressed,
          ),
        ),
      ],
    );
  }
}

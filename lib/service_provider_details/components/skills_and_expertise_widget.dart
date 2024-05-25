import "package:service_masters/common/barrels.dart";

class SkillsAndExpertiseWidget extends StatelessWidget {
  const SkillsAndExpertiseWidget({
    required this.widget,
    super.key,
  });

  final ServiceProviderDetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Wrap(
        spacing: 5.0,
        runSpacing: 2.0,
        children: List.generate(
          widget.serviceProvider.skillsAndExpertise.length,
          (index) => Chip(
            label: Text(
              widget.serviceProvider.skillsAndExpertise[
                  index % widget.serviceProvider.skillsAndExpertise.length],
              style: context.textTheme.bodyMedium!.copyWith(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            side: BorderSide.none,
            padding: const EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}

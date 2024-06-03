import "package:service_masters/common/barrels.dart";

class FilterServiceProvidersWidget extends StatelessWidget {
  const FilterServiceProvidersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        CustomIcons.filter,
      ),
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          builder: (context) => SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1),
              end: Offset.zero,
            )
                .chain(
                  CurveTween(curve: Curves.easeOutSine),
                )
                .animate(
                  CurvedAnimation(
                    parent: ModalRoute.of(context)?.animation ??
                        const AlwaysStoppedAnimation<double>(0),
                    curve: const Interval(
                      0.125,
                      0.250,
                      curve: Curves.easeOutCubic,
                    ),
                  ),
                ),
            child: const FilterServiceProvidersScreen(),
          ),
        );
      },
    );
  }
}

import "package:home_service_app/common/barrels.dart";

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static Page<void> page() =>
      const MaterialPage<void>(child: DashboardScreen());

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        // HomeRoute(),
        // BookingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                CustomIcons.home,
                size: 30,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CustomIcons.work,
                size: 30,
              ),
              label: "Bookings",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CustomIcons.commentAlt,
                size: 30,
              ),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CustomIcons.user,
                size: 30,
              ),
              label: "Profile",
            ),
          ],
        );
      },
    );
  }
}

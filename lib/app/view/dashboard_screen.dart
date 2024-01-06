import "package:home_service_app/common/barrels.dart";
import "package:home_service_app/common/routes/app_routes.gr.dart";

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static Page<void> page() =>
      const MaterialPage<void>(child: DashboardScreen());

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        BookingsRoute(),
        AllChatsRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          selectedItemColor: tPrimaryColor,
          unselectedItemColor: tPrimaryColor.withOpacity(0.5),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                CustomIcons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CustomIcons.work,
              ),
              label: "Bookings",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CustomIcons.commentAlt,
              ),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CustomIcons.user,
              ),
              label: "Profile",
            ),
          ],
        );
      },
    );
  }
}
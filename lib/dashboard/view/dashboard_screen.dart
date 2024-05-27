import "package:service_masters/common/barrels.dart";

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        const HomeRoute(),
        BookedServicesRoute(),
        const AllChatsRoute(),
        const ProfileRoute(),
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

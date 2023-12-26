import 'package:home_service_app/bookings/view/booked_services_screen.dart';
import 'package:home_service_app/src/app/barrels.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: ((context, state) => Scaffold(
            body: _buildScreen(state.selectedIndex),
            bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.blue,
                selectedItemColor: tPrimaryColor,
                unselectedItemColor: Colors.grey,
                items: items,
                currentIndex: state.selectedIndex,
                onTap: (index) {
                  context.read<NavigationBloc>().add(
                        NavigationTabSelected(index),
                      );
                }),
          )),
    );
  }

  final items = [
    const BottomNavigationBarItem(
      icon: Icon(
        CustomIcons.home,
        size: 30,
      ),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        CustomIcons.work,
        size: 30,
      ),
      label: 'Bookings',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        CustomIcons.commentAlt,
        size: 30,
      ),
      label: 'Chat',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        CustomIcons.user,
        size: 30,
      ),
      label: 'Profile',
    ),
  ];

  _buildScreen(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const BookingsScreen();
      case 2:
        return const AllChatsScreen();
      case 3:
        return const ProfileScreen();
      default:
        return Container();
    }
  }
}

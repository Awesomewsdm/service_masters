import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/blocs/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:home_service_app/src/blocs/bottom_navigation/bottom_navigation_event.dart';
import 'package:home_service_app/src/blocs/bottom_navigation/bottom_navigation_state.dart';
import 'package:home_service_app/src/screens/all_chats_screen.dart';
import 'package:home_service_app/src/screens/bookings_screen.dart';
import 'package:home_service_app/src/screens/home_screen.dart';
import 'package:home_service_app/src/screens/profile_screen.dart';
import 'package:home_service_app/src/screens/services_screen.dart';
import 'package:line_icons/line_icons.dart';

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
        LineIcons.home,
        size: 30,
      ),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        LineIcons.toolbox,
        size: 30,
      ),
      label: 'Services',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        LineIcons.bookmark,
        size: 30,
      ),
      label: 'Bookings',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        LineIcons.rocketChat,
        size: 30,
      ),
      label: 'Chat',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        LineIcons.user,
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
        return const ServicesScreen();

      case 2:
        return const BookingsScreen();

      case 3:
        return const AllChatsScreen();

      case 4:
        return const ProfileScreen();
      default:
        return Container();
    }
  }
}

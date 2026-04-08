import 'package:flutter/material.dart';
import 'package:trip_relay/utils/constant.dart';
import 'package:trip_relay/utils/navigation.dart';

class BottomNavBarButtonData {
  IconData icon;
  String screen;
  String title;

  BottomNavBarButtonData(this.title, this.icon, this.screen);
}

class BottomNavigationWidget extends StatefulWidget {
  final String currentScreen;

  const BottomNavigationWidget({super.key, required this.currentScreen});

  @override
  State<StatefulWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final List<BottomNavBarButtonData> _buttons = [
    BottomNavBarButtonData(
        "Explore", Icons.travel_explore_outlined, Path.explore),
    BottomNavBarButtonData("Home", Icons.home_rounded, Path.home),
    BottomNavBarButtonData(
        "My Trips", Icons.directions_car_outlined, Path.myTrips),
  ];

  @override
  Widget build(BuildContext context) {
    final selectedIndex = _buttons.indexWhere(
      (button) => button.screen == widget.currentScreen,
    );

    return BottomNavigationBar(
        items: _buttons
            .map((button) => BottomNavigationBarItem(
                icon: Icon(button.icon), label: button.title))
            .toList(),
        currentIndex: selectedIndex < 0 ? 0 : selectedIndex,
        onTap: (index) {
          if (_buttons[index].screen == widget.currentScreen) {
            return;
          }
          TripsRouter.nextScreen(_buttons[index].screen, go: true);
        });
  }
}

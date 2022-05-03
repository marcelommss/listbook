import 'package:flutter/material.dart';
import 'package:listbook/themes/app_colors.dart';

class DefaultBottomNavigationBar extends StatelessWidget {
  const DefaultBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_outlined),
            label: 'Contact',
            tooltip: 'Manage your Contacts'),
        BottomNavigationBarItem(
            icon: Icon(Icons.home_max),
            label: 'Lists',
            tooltip: 'Manage your Lists'),
        BottomNavigationBarItem(
            icon: Icon(Icons.home_max),
            label: 'Map',
            tooltip: 'Explore your map'),
        BottomNavigationBarItem(
            icon: Icon(Icons.home_max),
            label: 'Search',
            tooltip: 'Search for business Contacts'),
        BottomNavigationBarItem(
            icon: Icon(Icons.home_max),
            label: 'Settings',
            tooltip: 'Manage your settings'),
      ],
    );
  }
}

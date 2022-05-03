import 'package:flutter/material.dart';
import 'package:listbook/models/navigation_item_model.dart';
import 'package:listbook/themes/app_colors.dart';
import 'package:listbook/widgets/ListbookBottomNavBar/listbook_bottom_navbar.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    final items = [
      NavigationItemModel(
        icon: Icons.share,
        label: 'Contact',
        route: '/contacts',
      ),
      NavigationItemModel(
        icon: Icons.list,
        label: 'Lists',
        route: '/list',
      ),
      NavigationItemModel(
        icon: Icons.location_pin,
        label: 'Map',
        route: '/map',
      ),
      NavigationItemModel(
        icon: Icons.search,
        label: 'Search',
        route: '/search',
      ),
      NavigationItemModel(
        icon: Icons.settings,
        label: 'Settings',
        route: '/settings',
      ),
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: ListbookBottomNavBar(
        items: items,
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 1,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:listbook/models/navigation_item_model.dart';
import 'package:listbook/themes/app_colors.dart';

class ListbookBottomNavBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<NavigationItemModel> items;

  const ListbookBottomNavBar(
      {this.defaultSelectedIndex = 0,
      Key? key,
      required this.items,
      required this.onChange})
      : super(key: key);

  @override
  _ListbookBottomNavBarState createState() => _ListbookBottomNavBarState();
}

class _ListbookBottomNavBarState extends State<ListbookBottomNavBar> {
  int _selectedIndex = 0;
  List<NavigationItemModel> _items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _items = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _items.length; i++) {
      _navBarItemList.add(_buildNavBarItem(_items[i]));
    }

    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      elevation: 5,
      notchMargin: 5,
      color: AppColors.background,
      child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _navBarItemList),
    );
  }

  Widget _buildNavBarItem(NavigationItemModel data) {
    return IconButton(
      icon: Icon(
        data.icon,
        color: Colors.white,
      ),
      tooltip: data.label,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

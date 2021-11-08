import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/state/left-menu/left_menu_cubit.dart';
import 'package:oblio/widget-models/leftmenu_tile_model.dart';

class LeftMenu extends StatefulWidget {
  const LeftMenu({Key? key}) : super(key: key);

  @override
  State<LeftMenu> createState() => _LeftMenuState();
}

class _LeftMenuState extends State<LeftMenu> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<IconData> iconItems = [
      Icons.home,
      Icons.dashboard,
      Icons.calendar_today,
      Icons.assignment,
      Icons.assignment_ind,
      Icons.attach_money,
      Icons.business,
      Icons.contacts,
      Icons.assessment,
      Icons.perm_media,
      Icons.autorenew,
      Icons.shopping_cart,
      Icons.people,
    ];
    List<String> navItems = [
      "Home",
      "Dashboard",
      "Calendar",
      "Todos",
      "Teams",
      "Opportunities",
      "Accounts",
      "Contacts",
      "Campaings",
      "Creatives",
      "Workflows",
      "Products",
      "Employees",
    ];
    return BlocBuilder<LeftMenuCubit, String>(
      builder: (context, menustate) {
        return Container(
          width: 235,
          padding: EdgeInsets.only(top: 20),
          child: ListView.builder(
            itemCount: navItems.length,
            itemBuilder: (context, index) {
              return LeftMenuTileModel(
                  leading: Icon(
                    iconItems[index],
                    color: index == _selectedIndex
                        ? Colors.white
                        : Colors.grey[700],
                  ),
                  title: Text(
                    navItems[index].toString(),
                    style: TextStyle(
                      color: index == _selectedIndex
                          ? Colors.white
                          : Colors.grey[700],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  selected: index == _selectedIndex);
            },
          ),
        );
      },
    );
  }
}

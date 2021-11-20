import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/state/collapse/collapse_cubit.dart';
import 'package:oblio/widget-models/fab_button_model.dart';
import 'package:oblio/widget-models/tile_model.dart';

class LeftMenu extends StatefulWidget {
  const LeftMenu({Key? key}) : super(key: key);

  @override
  State<LeftMenu> createState() => _LeftMenuState();
}

class _LeftMenuState extends State<LeftMenu> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollapseCubit, bool>(
      builder: (context, collapseState) {
        List<IconData> iconItems = [
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

        var device = MediaQuery.of(context).size;
        var width = device.width;
        menuVisibility() => width < 900 ? false : true;
        collapsedTile() => collapseState == false ? true : false;
        responsiveWidth() =>
            width > 900 && collapseState == true ? 70.0 : 200.0;

        var collapse = collapseState == false
            ? Icons.arrow_back_ios
            : Icons.arrow_forward_ios;

        return Visibility(
          visible: menuVisibility(),
          child: Container(
            width: responsiveWidth(),
            padding: EdgeInsets.only(top: 25, bottom: 10),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                    itemCount: navItems.length,
                    itemBuilder: (context, index) {
                      return TileModel(
                          leading: Icon(
                            iconItems[index],
                            color: index == _selectedIndex
                                ? Colors.white
                                : Colors.grey[700],
                          ),
                          title: Visibility(
                            visible: collapsedTile(),
                            child: Text(
                              navItems[index].toString(),
                              style: TextStyle(
                                color: index == _selectedIndex
                                    ? Colors.white
                                    : Colors.grey[700],
                              ),
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
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 10, left: 8),
                  child: FabButtonModel(
                    hover: HexColor('#fff'),
                      onPressed: () {
                        collapseState == false
                            ? context.read<CollapseCubit>().collapse()
                            : context.read<CollapseCubit>().expand();
                      },
                      background: Colors.grey[50]!,
                      child: Icon(collapse, size: 20, color: Colors.grey[700]),
                      mini: true,
                      tag: 'collapse'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

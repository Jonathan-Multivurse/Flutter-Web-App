import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/state/collapse/collapse_cubit.dart';
import 'package:oblio/state/left-menu/left_menu_cubit.dart';
import 'package:oblio/components/tile_model.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:advanced_icon/advanced_icon.dart';

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
          "Lobby",
          "Placeholder",
          "Placeholder",
          "Placeholder",
          "Placeholder",
          "Placeholder",
          "Placeholder",
          "Placeholder",
        ];

        var device = MediaQuery.of(context).size;
        var width = device.width;
        collapsedTile() => collapseState == false ? true : false;

        return BlocBuilder<LeftMenuCubit, String>(
          builder: (context, leftmenuState) {
            return Container(
              width: 150,
              padding: EdgeInsets.only(top: 75, bottom: 10),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      itemCount: navItems.length,
                      itemBuilder: (context, index) {
                        return TileModel(
                            leading: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: AdvancedIcon(
                                  icon: iconItems[index],
                                  color: Colors.indigo,
                                  gradient: LinearGradient(
                                    stops: [0.0, 1.0],
                                    colors: index == _selectedIndex
                                        ? <Color>[
                                            HexColor('#3f5efb'),
                                            HexColor('#ad5092')
                                          ]
                                        : <Color>[
                                            Colors.grey[800]!,
                                            Colors.grey[800]!
                                          ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                )),
                            title: Visibility(
                              visible: collapsedTile(),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 32),
                                child: GradientText(
                                    navItems[index].toString(),
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: 'Poppins'),
                                    colors: index == _selectedIndex
                                        ? [
                                            HexColor('#3f5efb'),
                                            HexColor('#fc4646')
                                          ]
                                        : [
                                            Colors.grey[800]!,
                                            Colors.grey[800]!
                                          ]),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                              });
                              if (index == 0) {
                                return context.read<LeftMenuCubit>().lobby();
                              } else if (index == 1) {
                                return context
                                    .read<LeftMenuCubit>()
                                    .placeholder1();
                              } else if (index == 2) {
                                return context
                                    .read<LeftMenuCubit>()
                                    .placeholder2();
                              } else if (index == 3) {
                                return context
                                    .read<LeftMenuCubit>()
                                    .placeholder3();
                              } else if (index == 4) {
                                return context
                                    .read<LeftMenuCubit>()
                                    .placeholder4();
                              } else if (index == 5) {
                                return context
                                    .read<LeftMenuCubit>()
                                    .placeholder5();
                              } else if (index == 6) {
                                return context
                                    .read<LeftMenuCubit>()
                                    .placeholder6();
                              } else if (index == 7) {
                                return context
                                    .read<LeftMenuCubit>()
                                    .placeholder7();
                              }
                            },
                            selected: index == _selectedIndex);
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

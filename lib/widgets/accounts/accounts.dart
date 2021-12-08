import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/state/right-menu/right_menu_cubit.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widgets/accounts/header/header.dart';

class AccountsWidgets extends StatefulWidget {
  const AccountsWidgets({Key? key}) : super(key: key);

  @override
  State<AccountsWidgets> createState() => _AccountsWidgetsState();
}

class _AccountsWidgetsState extends State<AccountsWidgets>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RightMenuCubit, String>(
      builder: (context, menuState) {
        var device = MediaQuery.of(context).size;
        var width = device.width;
        visibility() => width < 600 && menuState != '' ? false : true;
        return Visibility(
          visible: visibility(),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Wrap(
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              textDirection: TextDirection.ltr,
              runSpacing: 20,
              spacing: 20,
              children: [
                Stack(
                  children: [
                    AccountHeader(),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 450,
                        color: oblioTheme.canvasColor,
                        child: TabBar(
                          controller: _tabController,
                          tabs: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Overview'.toUpperCase(),
                                style: oblioTheme.textTheme.overline!,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Details'.toUpperCase(),
                                style: oblioTheme.textTheme.overline!,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Activity'.toUpperCase(),
                                style: oblioTheme.textTheme.overline!,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Versions'.toUpperCase(),
                                style: oblioTheme.textTheme.overline!,
                              ),
                            ),
                          ],
                          indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                                color: HexColor('#5F78E4'), width: 2.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 500,
                  child: TabBarView(
                    controller: _tabController,
                    children: const <Widget>[
                      Center(child: Text('Tab 1')),
                      Center(child: Text('Tab 2')),
                      Center(child: Text('Tab 3')),
                      Center(child: Text('Tab 4')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

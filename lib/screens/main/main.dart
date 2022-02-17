import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/screens/accounts/accounts.dart';
import 'package:oblio/screens/calendar/calendar.dart';
import 'package:oblio/screens/campaigns/campaigns.dart';
import 'package:oblio/screens/contacts/contacts.dart';
import 'package:oblio/screens/creatives/creatives.dart';
import 'package:oblio/screens/employees/employees.dart';
import 'package:oblio/screens/home/home.dart';
import 'package:oblio/screens/opportunities/opportunities.dart';
import 'package:oblio/screens/products/products.dart';
import 'package:oblio/screens/teams/teams.dart';
import 'package:oblio/screens/todos/todos.dart';
import 'package:oblio/screens/workflows/workflows.dart';
import 'package:oblio/state/left-menu/left_menu_cubit.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widgets/header/header.dart';
import 'package:oblio/widgets/left-menu/left_menu.dart';
import 'package:oblio/widgets/right-menu/right_menu.dart';
import 'package:oblio/widgets/right-menu/right_window.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeftMenuCubit, String>(
      builder: (context, state) {
        screens() {
          if (state == 'home') {
            return HomeScreen();
          } else if (state == 'calendar') {
            return CalendarScreen();
          } else if (state == 'todos') {
            return TodosScreen();
          } else if (state == 'teams') {
            return TeamsScreen();
          } else if (state == 'opportunities') {
            return OpportunitiesScreen();
          } else if (state == 'accounts') {
            return AccountsScreen();
          } else if (state == 'contacts') {
            return ContactsScreen();
          } else if (state == 'campaigns') {
            return CampaignsScreen();
          } else if (state == 'creatives') {
            return CreativesScreen();
          } else if (state == 'workflows') {
            return WorkflowsScreen();
          } else if (state == 'products') {
            return ProductsScreen();
          } else if (state == 'employees') {
            return EmployeesScreen();
          }
        }

        var device = MediaQuery.of(context).size;
        var height = device.height;
        var width = device.width;

        return WillPopScope(
          onWillPop: () async => false,
          child: Scaffold(
            backgroundColor: Colors.grey[100],
            drawerScrimColor: Colors.transparent,
            drawer: Drawer(
                backgroundColor: Colors.grey.withOpacity(0.1),
                elevation: 0,
                child: Container(
                  padding: EdgeInsets.only(right: 50),
                  child: LeftMenu(),
                )),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: HomeHeader(),
            ),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(),
                Flexible(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      height: height * 0.90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        direction: Axis.horizontal,
                        textDirection: TextDirection.ltr,
                        spacing: 20,
                        children: [
                          Container(),
                          Container(),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [RightMenu(), RightWindow()],
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

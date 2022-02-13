import 'package:flutter/material.dart';
import 'package:oblio/screens/authentication/authentication_screen.dart';
import 'package:oblio/screens/calendar/calendar.dart';
import 'package:oblio/screens/campaigns/campaigns.dart';
import 'package:oblio/screens/contacts/contacts.dart';
import 'package:oblio/screens/creatives/creatives.dart';
import 'package:oblio/screens/employees/employees.dart';
import 'package:oblio/screens/main/main.dart';
import 'package:oblio/screens/opportunities/opportunities.dart';
import 'package:oblio/screens/organizations/organizations.dart';
import 'package:oblio/screens/products/products.dart';
import 'package:oblio/screens/registration/registration_screen.dart';
import 'package:oblio/screens/reset/reset.dart';
import 'package:oblio/screens/teams/teams.dart';
import 'package:oblio/screens/todos/todos.dart';
import 'package:oblio/screens/workflows/workflows.dart';
import 'package:page_transition/page_transition.dart';

const String AuthenticationRoute = '/authentication';
const String RegistrationRoute = '/registration';
const String ResetpasswordRoute = '/reset-password';
const String HomeRoute = '/oblio';
const String CalendarRoute = '/calendar';
const String CampaignsRoute = '/campaigns';
const String ContactsRoute = '/contacts';
const String CreativesRoute = '/creatives';
const String AccountsRoute = '/accounts';
const String OpportunitiesRoute = '/opportunities';
const String OrganizationsRoute = '/organizations';
const String ProductsRoute = '/products';
const String TeamsRoute = '/teams';
const String TodosRoute = '/todos';
const String WorkflowsRoute = '/workflows';
const String EmployeesRoute = '/employees';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RegistrationRoute:
        return PageTransition(
          child: RegistrationScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 50),
        );
      case AuthenticationRoute:
        return PageTransition(
          child: AuthenticationScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 100),
        );
      case ResetpasswordRoute:
        return PageTransition(
          child: ResetScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 100),
        );
      case HomeRoute:
        return PageTransition(
          child: MainScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 50),
        );

      case CalendarRoute:
        return PageTransition(
          child: CalendarScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case CampaignsRoute:
        return PageTransition(
          child: CampaignsScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case ContactsRoute:
        return PageTransition(
          child: ContactsScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case CreativesRoute:
        return PageTransition(
          child: CreativesScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case OpportunitiesRoute:
        return PageTransition(
          child: OpportunitiesScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case OrganizationsRoute:
        return PageTransition(
          child: OrganizationsScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case ProductsRoute:
        return PageTransition(
          child: ProductsScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case TeamsRoute:
        return PageTransition(
          child: TeamsScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case TodosRoute:
        return PageTransition(
          child: TodosScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case WorkflowsRoute:
        return PageTransition(
          child: WorkflowsScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      case EmployeesRoute:
        return PageTransition(
          child: EmployeesScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
      default:
        return PageTransition(
          child: MainScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          duration: const Duration(milliseconds: 200),
        );
    }
  }
}

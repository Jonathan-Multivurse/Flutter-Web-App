import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/state/right-menu/right_menu_cubit.dart';
import 'package:oblio/widgets/accounts/header/header.dart';

class AccountsWidgets extends StatelessWidget {
  const AccountsWidgets({Key? key}) : super(key: key);

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
              children: [AccountHeader()],
            ),
          ),
        );
      },
    );
  }
}

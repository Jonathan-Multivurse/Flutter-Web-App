import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/state/right-menu/right_menu_cubit.dart';
import 'package:oblio/widgets/home/long-card.dart';
import 'package:oblio/widgets/home/short-card.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RightMenuCubit, String>(
      builder: (context, menuState) {
        var device = MediaQuery.of(context).size;
        var width = device.width;
        visibility() => width < 600 && menuState != '' ? false : true;
        return Visibility(
          visible: visibility(),
          child: Wrap(
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            textDirection: TextDirection.ltr,
            runSpacing: 20,
            spacing: 20,
            children: [
              ShortCard(child: Container()),
              ShortCard(child: Container()),
              ShortCard(child: Container()),
              LongCard(child: Container()),
              LongCard(child: Container()),
              LongCard(child: Container()),

              // TextModel(
              //   data: 'Welcome Home',
              //   style: oblioTheme.textTheme.headline2!,
              //   textAlign: TextAlign.center,
              //   textDirection: TextDirection.ltr,
              // ),
              // SizedBox(height: 20),
              // PrimaryButtonModel(
              //   height: 50,
              //   width: 150,
              //   padding: EdgeInsets.all(0),
              //   onPressed: () {
              //     Navigator.pushNamed(context, AuthenticationRoute);
              //   },
              //   name: 'SIGN OUT',
              //   textStyle: oblioTheme.primaryTextTheme.button!,
              //   style: oblioTheme.elevatedButtonTheme.style!,
              // ),
            ],
          ),
        );
      },
    );
  }
}

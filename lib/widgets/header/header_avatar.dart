import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widgets/home/account/account.dart';

class HeaderAvatar extends StatelessWidget {
  const HeaderAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    var height = device.height;
    var width = device.width;
    return InkResponse(
      onTap: () {
        showDialog(
            barrierColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) {
              return Container(
                  padding: EdgeInsets.only(top: 100, right: 10),
                  alignment: Alignment.topCenter,
                  child: AccountCard(
                    height: height * 0.7,
                    width: width * 0.5,
                  ));
            });
      },
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        margin: EdgeInsets.only(right: 16),
        child: CircleAvatar(
          backgroundColor: oblioTheme.backgroundColor,
          radius: 20,
          backgroundImage: AssetImage(
            'lib/assets/images/1.0x/avatar0.png',
          ),
        ),
      ),
    );
  }
}

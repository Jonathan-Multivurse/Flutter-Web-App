import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widgets/home/account/account.dart';

class HeaderAvatar extends StatelessWidget {
  const HeaderAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        showDialog(
          barrierColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) {
              return Container(
                padding: EdgeInsets.only(top: 70, right: 15),
                alignment: Alignment.topRight,
                child: AccountCard()
              );
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

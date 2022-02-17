import 'package:flutter/material.dart';
import 'package:oblio/routes/routes.dart';
import 'package:oblio/theme/colors.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/components/avatar_model.dart';
import 'package:oblio/components/divider_model.dart';
import 'package:oblio/components/primary_button_model.dart';
import 'package:oblio/components/text_model.dart';
import 'package:oblio/widgets/home/account/account_footer.dart';

class AccountCard extends StatelessWidget {
  final double height;
  final double width;
  const AccountCard({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(10),
      child: Container(
          padding: EdgeInsets.only(top: 100, right: 10),
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AvatarModel(
                onPressed: () {},
                radius: 60,
                image: AssetImage(
                  'lib/assets/images/1.0x/avatar0.png',
                ),
              ),
              SizedBox(height: 10),
              TextModel(
                data: 'Mike Hunt'.toUpperCase(),
                style: oblioTheme.textTheme.headline3!,
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
              ),
              SizedBox(height: 5),
              TextModel(
                data: 'mikehunt@gmail.com',
                style: oblioTheme.textTheme.headline5!,
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
              ),
              SizedBox(height: 15),
              PrimaryButtonModel(
                height: 60,
                width: 220,
                padding: EdgeInsets.all(5),
                name: 'Manage Your Account'.toUpperCase(),
                textStyle: oblioTheme.textTheme.overline!,
                onPressed: () {},
                style: ButtonStyle(
                    elevation: MaterialStateProperty.resolveWith((states) => 0),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        color: CompanyColors.font_primary[100],
                      ),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    )),
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.grey[300]),
                    splashFactory: NoSplash.splashFactory),
              ),
              PrimaryButtonModel(
                height: 60,
                width: 220,
                padding: EdgeInsets.all(5),
                name: 'Sign Out'.toUpperCase(),
                textStyle: oblioTheme.primaryTextTheme.overline!,
                onPressed: () {
                  Navigator.pushNamed(context, AuthenticationRoute);
                },
                style: ButtonStyle(
                    elevation: MaterialStateProperty.resolveWith((states) => 0),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    )),
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.red[500]),
                    splashFactory: NoSplash.splashFactory),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: DividerModel(
                  height: 0,
                  thickness: 1,
                  color: oblioTheme.dividerTheme.color!,
                ),
              ),
              AccountFooter()
            ],
          )),
    );
  }
}

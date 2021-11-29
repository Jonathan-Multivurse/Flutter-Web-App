import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/state/owned-opp/owned_opp.dart';
import 'package:oblio/widgets/home/owned/owned_opp_tile.dart';

class OwnedOppExpansionList extends StatelessWidget {
  const OwnedOppExpansionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    var width = device.width;
    responsiveWidth() {
      if (width > 1400) {
        return 350.0;
      } else if (width <= 1400 && width >= 700) {
        return 400.0;
      } else if (width < 700) {
        return 350.0;
      }
    }

    return BlocBuilder<OwnedOppCubit, bool>(builder: (context, ownedState) {
      action() => ownedState == false
          ? context.read<OwnedOppCubit>().show()
          : context.read<OwnedOppCubit>().hide();
      title() => ownedState == false ? 'Expand' : 'Collapse';
      visibility() => ownedState == false ? false : true;

      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OwnedOppTile(
            title: 'Standard Membership',
            color: HexColor('#5F78E4'),
          ),
          OwnedOppTile(
            title: 'Enbterprise Membership',
            color: HexColor('#FDB653'),
          ),
          OwnedOppTile(
            title: 'Standard Membership',
            color: HexColor('#5F78E4'),
          ),
          OwnedOppTile(
            title: 'Enbterprise Membership',
            color: HexColor('#FDB653'),
          ),
          Visibility(
            visible: visibility(),
            child: Column(
              children: [
                OwnedOppTile(
                  title: 'Standard Membership',
                  color: HexColor('#5F78E4'),
                ),
                OwnedOppTile(
                  title: 'Enbterprise Membership',
                  color: HexColor('#FDB653'),
                ),
                OwnedOppTile(
                  title: 'Standard Membership',
                  color: HexColor('#5F78E4'),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: responsiveWidth(),
            child: InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                action();
              },
              child: Center(child: Text(title())),
            ),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ],
      );
    });
  }
}

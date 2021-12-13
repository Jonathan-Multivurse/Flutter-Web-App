import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/widgets/accounts/attribution/contact_attribution_tile.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ContactAttrributionTop extends StatelessWidget {
  const ContactAttrributionTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 30, bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            CircularPercentIndicator(
              radius: 80.0,
              lineWidth: 12.0,
              animation: true,
              percent: 0.4,
              center: Text(
                "40" + "%",
              ),
              backgroundColor: Colors.grey[200]!,
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: HexColor('#5F78E4'),
            ),
            SizedBox(width: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      ContactAttributionTile(
                          title: 'Opportunity'.toUpperCase(), body: 'MQL'),
                      SizedBox(height: 5),
                      ContactAttributionTile(
                          title: 'Persona'.toUpperCase(), body: 'Decision M.'),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ContactAttributionTile(
                        title: 'Use Case'.toUpperCase(), body: 'HR'),
                    SizedBox(height: 5),
                    ContactAttributionTile(
                        title: 'Ad Group'.toUpperCase(), body: 'HR Manager'),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}

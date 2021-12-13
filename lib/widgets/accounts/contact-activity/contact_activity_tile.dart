import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widgets/accounts/contact-activity/contact_activity_expansion.dart';

class ContactActivityTile extends StatelessWidget {
  final String title;
  final String image;
  final String type;
  const ContactActivityTile(
      {Key? key, required this.title, required this.image, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ContactActivityExpansion(
          type: type,
          title: Text(title, style: oblioTheme.primaryTextTheme.headline2),
          image: image,
          tags: Row(
            children: [
              Text(
                'Open'.toUpperCase(),
                style: oblioTheme.textTheme.caption,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(
                  Icons.fiber_manual_record,
                  size: 6,
                ),
              ),
              Text(
                'Renewal'.toUpperCase(),
                style: oblioTheme.textTheme.caption,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(
                  Icons.fiber_manual_record,
                  size: 6,
                ),
              ),
              Text(
                'Ibm'.toUpperCase(),
                style: oblioTheme.textTheme.caption,
              ),
            ],
          ),
          tags2: Row(
            children: [
              Text(
                'Outbound',
                style: oblioTheme.textTheme.caption,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(
                  Icons.fiber_manual_record,
                  size: 6,
                ),
              ),
              Text(
                '01/02/03',
                style: oblioTheme.textTheme.caption,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(
                  Icons.fiber_manual_record,
                  size: 6,
                ),
              ),
              Text(
                '04/05/06',
                style: oblioTheme.textTheme.caption,
              ),
            ],
          ),
          children: []),
    );
  }
}

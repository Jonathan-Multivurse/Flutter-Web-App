import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widgets/accounts/common/common_title.dart';
import 'package:oblio/widgets/accounts/links/directory_links.dart';
import 'package:oblio/widgets/accounts/links/site_links.dart';
import 'package:oblio/widgets/accounts/links/social_links.dart';

class LinksWidets extends StatefulWidget {
  const LinksWidets({Key? key}) : super(key: key);

  @override
  State<LinksWidets> createState() => _LinksWidetsState();
}

class _LinksWidetsState extends State<LinksWidets> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        height: 600,
        child: ListView(
          shrinkWrap: true,
          children: [
            AccountCommonTitle(title: 'Account Contact Details'),
            SizedBox(height: 5),
            SocialLinks(),
            SiteLinks(),
            DirectoryLinks()
          ],
        ),
      ),
    );
  }
}

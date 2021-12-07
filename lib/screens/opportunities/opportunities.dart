import 'package:flutter/material.dart';

class OpportunitiesScreen extends StatefulWidget {
  const OpportunitiesScreen({Key? key}) : super(key: key);

  @override
  _OpportunitiesScreenState createState() => _OpportunitiesScreenState();
}

class _OpportunitiesScreenState extends State<OpportunitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: Flexible(
        flex: 1,
        child: SingleChildScrollView(
            child: Center(
          child: Text('Opportunities Screen'),
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/text_model.dart';

class PipelineTitle extends StatelessWidget {
  const PipelineTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 15),
      child: TextModel(
        data: 'PIPELINE GOALS',
        style: oblioTheme.textTheme.headline4!,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
      ),
    );
  }
}

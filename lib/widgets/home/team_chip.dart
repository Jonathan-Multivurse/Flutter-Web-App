import 'package:flutter/material.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/chip_model.dart';

class StatsTeamChip extends StatelessWidget {
  const StatsTeamChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChipModel(
        label: Text('alpha team'),
        color: oblioTheme.chipTheme.backgroundColor,
        style: oblioTheme.textTheme.overline!,
      ),
    );
  }
}

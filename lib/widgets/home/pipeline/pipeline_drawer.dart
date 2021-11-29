import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/state/pipeline-drawer/pipeline_drawer.dart';
import 'package:oblio/widgets/home/pipeline/pipeline_expansion.dart';

class PipelineDrawer extends StatelessWidget {
  const PipelineDrawer({Key? key}) : super(key: key);

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

    return BlocBuilder<PipelineDrawerCubit, bool>(
      builder: (context, drawerState) {
        action() => drawerState == false
            ? context.read<PipelineDrawerCubit>().show()
            : context.read<PipelineDrawerCubit>().hide();
        title() => drawerState == false ? 'Expand' : 'Collapse';
        return Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PipelineExpansion(
                  percentNum: 0.5,
                  percentText: '50',
                  color: HexColor('#8FA1EC'),
                  title: 'MQL Opportunities',
                  subtitle: '20 out of 60',
                  children: []),
              PipelineExpansion(
                  percentNum: 0.6,
                  percentText: '60',
                  color: HexColor('#FDB653'),
                  title: 'SQL Opportunities',
                  subtitle: '20 out of 60',
                  children: []),
              PipelineExpansion(
                  percentNum: 0.75,
                  percentText: '75',
                  color: HexColor('#FF8787'),
                  title: 'Sale Opportunities',
                  subtitle: '20 out of 60',
                  children: []),
              PipelineExpansion(
                  percentNum: 0.9,
                  percentText: '90',
                  color: HexColor('#34CA87'),
                  title: 'Resale Opportunities',
                  subtitle: '20 out of 60',
                  children: []),
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
          ),
        );
      },
    );
  }
}

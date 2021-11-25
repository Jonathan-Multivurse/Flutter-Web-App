import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/state/owned-opp/owned_opp.dart';
import 'package:oblio/theme/colors.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widgets/home/owned/owned_opp_expansion.dart';

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
          SizedBox(
            height: 100,
            child: OwnedOppExpansion(
                percentNum: 0.5,
                percentText: '50',
                color: HexColor('#435BD9'),
                tags: Row(
                  children: [
                    Text(
                      'OPEN',
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
                      'RENEWAL',
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
                      'IBM',
                      style: oblioTheme.textTheme.caption,
                    ),
                  ],
                ),
                title: Text('MQL Opportunities',
                    style: oblioTheme.textTheme.headline4),
                subtitle: Row(
                  children: [
                    Text(
                      '\$1500',
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
                      '10/01/21',
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
                      '25/05/21',
                      style: oblioTheme.textTheme.caption,
                    ),
                  ],
                ),
                hearts: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[500]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[500]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[300]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[100]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[100]),
                      ],
                    ),
                    SizedBox(width: 15),
                    Text('NOV 10', style: oblioTheme.textTheme.caption),
                  ],
                ),
                children: []),
          ),
          SizedBox(
            height: 100,
            child: OwnedOppExpansion(
                percentNum: 0.6,
                percentText: '60',
                color: HexColor('#FDAF4C'),
                tags: Row(
                  children: [
                    Text(
                      'OPEN',
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
                      'RENEWAL',
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
                      'IBM',
                      style: oblioTheme.textTheme.caption,
                    ),
                  ],
                ),
                title: Text('SQL Opportunities',
                    style: oblioTheme.textTheme.headline4),
                subtitle: Row(
                  children: [
                    Text(
                      '\$1500',
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
                      '10/01/21',
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
                      '25/05/21',
                      style: oblioTheme.textTheme.caption,
                    ),
                  ],
                ),
                hearts: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[500]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[500]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[300]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[100]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[100]),
                      ],
                    ),
                    SizedBox(width: 15),
                    Text('NOV 10', style: oblioTheme.textTheme.caption),
                  ],
                ),
                children: []),
          ),
          SizedBox(
            height: 100,
            child: OwnedOppExpansion(
                percentNum: 0.75,
                percentText: '75',
                color: HexColor('#FA4583'),
                tags: Row(
                  children: [
                    Text(
                      'OPEN',
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
                      'RENEWAL',
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
                      'IBM',
                      style: oblioTheme.textTheme.caption,
                    ),
                  ],
                ),
                title: Text('Sale Opportunities',
                    style: oblioTheme.textTheme.headline4),
                subtitle: Row(
                  children: [
                    Text(
                      '\$1500',
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
                      '10/01/21',
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
                      '25/05/21',
                      style: oblioTheme.textTheme.caption,
                    ),
                  ],
                ),
                hearts: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[500]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[500]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[300]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[100]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[100]),
                      ],
                    ),
                    SizedBox(width: 15),
                    Text('NOV 10', style: oblioTheme.textTheme.caption),
                  ],
                ),
                children: []),
          ),
          SizedBox(
            height: 100,
            child: OwnedOppExpansion(
                percentNum: 0.9,
                percentText: '90',
                color: HexColor('#0EBB6A'),
                tags: Row(
                  children: [
                    Text(
                      'OPEN',
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
                      'RENEWAL',
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
                      'IBM',
                      style: oblioTheme.textTheme.caption,
                    ),
                  ],
                ),
                title: Text('Resale Opportunities',
                    style: oblioTheme.textTheme.headline4),
                subtitle: Row(
                  children: [
                    Text(
                      '\$1500',
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
                      '10/01/21',
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
                      '25/05/21',
                      style: oblioTheme.textTheme.caption,
                    ),
                  ],
                ),
                hearts: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[500]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[500]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[300]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[100]),
                        Icon(Icons.favorite,
                            size: 18, color: CompanyColors.red[100]),
                      ],
                    ),
                    SizedBox(width: 15),
                    Text('NOV 10', style: oblioTheme.textTheme.caption),
                  ],
                ),
                children: []),
          ),
          Visibility(
            visible: visibility(),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: OwnedOppExpansion(
                      percentNum: 0.6,
                      percentText: '60',
                      color: HexColor('#FDAF4C'),
                      tags: Row(
                        children: [
                          Text(
                            'OPEN',
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
                            'RENEWAL',
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
                            'IBM',
                            style: oblioTheme.textTheme.caption,
                          ),
                        ],
                      ),
                      title: Text('Enterprise Membership',
                          style: oblioTheme.textTheme.headline4),
                      subtitle: Row(
                        children: [
                          Text(
                            '\$1500',
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
                            '10/01/21',
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
                            '25/05/21',
                            style: oblioTheme.textTheme.caption,
                          ),
                        ],
                      ),
                      hearts: Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[500]),
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[500]),
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[300]),
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[100]),
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[100]),
                            ],
                          ),
                          SizedBox(width: 15),
                          Text('NOV 10', style: oblioTheme.textTheme.caption),
                        ],
                      ),
                      children: []),
                ),
                SizedBox(
                  height: 100,
                  child: OwnedOppExpansion(
                      percentNum: 0.75,
                      percentText: '75',
                      color: HexColor('#FA4583'),
                      tags: Row(
                        children: [
                          Text(
                            'OPEN',
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
                            'RENEWAL',
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
                            'IBM',
                            style: oblioTheme.textTheme.caption,
                          ),
                        ],
                      ),
                      title: Text('Standard Membership',
                          style: oblioTheme.textTheme.headline4),
                      subtitle: Row(
                        children: [
                          Text(
                            '\$1500',
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
                            '10/01/21',
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
                            '25/05/21',
                            style: oblioTheme.textTheme.caption,
                          ),
                        ],
                      ),
                      hearts: Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[500]),
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[500]),
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[300]),
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[100]),
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[100]),
                            ],
                          ),
                          SizedBox(width: 15),
                          Text('NOV 10', style: oblioTheme.textTheme.caption),
                        ],
                      ),
                      children: []),
                ),
                SizedBox(
                  height: 100,
                  child: OwnedOppExpansion(
                      percentNum: 0.9,
                      percentText: '90',
                      color: HexColor('#0EBB6A'),
                      tags: Row(
                        children: [
                          Text(
                            'OPEN',
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
                            'RENEWAL',
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
                            'IBM',
                            style: oblioTheme.textTheme.caption,
                          ),
                        ],
                      ),
                      title: Text('Enterprise Membership',
                          style: oblioTheme.textTheme.headline4),
                      subtitle: Row(
                        children: [
                          Text(
                            '\$1500',
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
                            '10/01/21',
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
                            '25/05/21',
                            style: oblioTheme.textTheme.caption,
                          ),
                        ],
                      ),
                      hearts: Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[500]),
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[500]),
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[300]),
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[100]),
                              Icon(Icons.favorite,
                                  size: 18, color: CompanyColors.red[100]),
                            ],
                          ),
                          SizedBox(width: 15),
                          Text('NOV 10', style: oblioTheme.textTheme.caption),
                        ],
                      ),
                      children: []),
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

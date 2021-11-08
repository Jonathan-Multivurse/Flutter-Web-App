import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/state/right-window/right_window_cubit.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/fab_button_model.dart';
import 'package:oblio/widget-models/text_model.dart';

class RightWindow extends StatelessWidget {
  const RightWindow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RightWindowCubit, bool>(
      builder: (context, windowState) {
        return Visibility(
          visible: windowState,
          child: Container(
            width: 300,
            color: Colors.grey[50],
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      context.read<RightWindowCubit>().hide();
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.grey[800],
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(height: 300),
                Flexible(
                  flex: 1,
                  child: TextModel(
                    data: 'Right Window',
                    style: oblioTheme.textTheme.bodyText1!,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

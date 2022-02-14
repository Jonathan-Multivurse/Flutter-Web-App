import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/state/right-menu/right_menu_cubit.dart';
import 'package:oblio/state/right-window/right_window_cubit.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/components/text_model.dart';

class RightWindow extends StatelessWidget {
  const RightWindow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RightMenuCubit, String>(
      builder: (context, menuState) {
        return BlocBuilder<RightWindowCubit, bool>(
          builder: (context, windowState) {
            return Visibility(
              visible: windowState,
              child: Container(
                width: 400,
                color: Colors.grey[100],
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
                          context.read<RightMenuCubit>().none();
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
      },
    );
  }
}

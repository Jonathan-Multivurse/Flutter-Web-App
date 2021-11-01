import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/state/remember-me-checkbox/rememberme_cubit.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/text_model.dart';
import 'package:oblio/widgets/authentication/checkbox.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BlocBuilder<RemembermeCubit, bool>(
          builder: (context, rememberState) {
            return AuthenticationCheckbox(
                value: rememberState,
                onChanged: (bool? value) {
                  rememberState == false
                      ? context.read<RemembermeCubit>().rememberCheck()
                      : context.read<RemembermeCubit>().rememberUncheck();
                });
          },
        ),
        TextModel(
            data: 'REMEMBER ME',
            style: oblioTheme.textTheme.overline!,
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr)
      ],
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'smapletwo_state.dart';

class SmapletwoCubit extends Cubit<SmapletwoState> {
  SmapletwoCubit() : super(SmapletwoInitial());
}

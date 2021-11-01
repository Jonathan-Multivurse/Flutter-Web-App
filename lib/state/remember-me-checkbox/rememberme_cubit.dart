import 'package:bloc/bloc.dart';

class RemembermeCubit extends Cubit<bool> {
  RemembermeCubit() : super(false);
  void rememberCheck() => emit(true);
  void rememberUncheck() => emit(false);
}

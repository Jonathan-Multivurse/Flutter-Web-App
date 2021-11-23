import 'package:bloc/bloc.dart';

class RightMenuHoverCubit extends Cubit<bool> {
  RightMenuHoverCubit() : super(false);
  void hover() => emit(true);
}

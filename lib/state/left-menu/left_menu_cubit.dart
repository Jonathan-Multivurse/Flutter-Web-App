import 'package:bloc/bloc.dart';

class LeftMenuCubit extends Cubit<String> {
  LeftMenuCubit() : super('lobby');
  void lobby() => emit('lobby');
  void placeholder1() => emit('placeholder1');
  void placeholder2() => emit('placeholder2');
  void placeholder3() => emit('placeholder3');
  void placeholder4() => emit('placeholder4');
  void placeholder5() => emit('placeholder5');
  void placeholder6() => emit('placeholder6');
  void placeholder7() => emit('placeholder7');
}

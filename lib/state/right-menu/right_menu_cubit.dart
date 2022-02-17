import 'package:bloc/bloc.dart';

class RightMenuCubit extends Cubit<String> {
  RightMenuCubit() : super('');
  void none() => emit('');
  void fitness() => emit('fitness');
  void hygiene() => emit('hygiene');
  void meal() => emit('meal');
  void spirituality() => emit('spirituality');
  void clothing() => emit('clothing');
  void work() => emit('work');
  void chill() => emit('chill');
  void growth() => emit('growth');
  void social() => emit('social');
  void sleep() => emit('sleep');
}


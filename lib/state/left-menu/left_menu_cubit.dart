import 'package:bloc/bloc.dart';

class LeftMenuCubit extends Cubit<String> {
  LeftMenuCubit() : super('home');
  void home() => emit('home');
  void dashboard() => emit('dashboard');
  void calendar() => emit('calendar');
  void todos() => emit('todos');
  void teams() => emit('teams');
  void opportunities() => emit('opportunities');
  void accounts() => emit('accounts');
  void contacts() => emit('contacts');
  void campaings() => emit('campaings');
  void creatives() => emit('creatives');
  void workflows() => emit('workflows');
  void products() => emit('products');
  void employees() => emit('employees');
}

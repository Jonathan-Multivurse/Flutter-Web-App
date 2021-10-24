import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sampleone_state.dart';

class SampleoneCubit extends Cubit<SampleoneState> {
  SampleoneCubit() : super(SampleoneInitial());
}

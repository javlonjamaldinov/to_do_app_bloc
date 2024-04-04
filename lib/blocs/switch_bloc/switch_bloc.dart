import 'package:equatable/equatable.dart';
import 'package:to_do_app_bloc/blocs/bloc_exports.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends HydratedBloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchInitial(switchValue: false)) {
    on<SwitchOnEvent>((event, emit) {
      emit(const SwitchState(switchValue: true));
    });
    on<SwitchOffEvent>((event, emit) {
      emit(const SwitchState(switchValue: false));
    });
  }

  @override
  SwitchState? fromJson(Map<String, dynamic> json) {
    return SwitchState.fromMap(json);
  }

  @override
  @override
  Map<String, dynamic>? toJson(SwitchState state) {
    return state.toMap();
  }
}

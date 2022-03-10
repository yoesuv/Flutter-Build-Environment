import 'package:build_environment/src/core/home_event.dart';
import 'package:build_environment/src/core/home_state.dart';
import 'package:build_environment/src/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeEventInit>(_loadEnvironment);
  }

  void _loadEnvironment(HomeEventInit event, Emitter<HomeState> emit) async{
    final flavor = await flavorConfig();
    emit(state.copyWith(
      baseUrl: flavor.baseUrl,
    ));
  }
}
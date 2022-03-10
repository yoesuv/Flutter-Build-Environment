import 'package:build_environment/src/core/home_event.dart';
import 'package:build_environment/src/core/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState);
} 
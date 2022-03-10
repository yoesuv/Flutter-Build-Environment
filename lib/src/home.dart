import 'package:build_environment/src/core/home_bloc.dart';
import 'package:build_environment/src/core/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeBloc _bloc = context.read<HomeBloc>();
    return Scaffold (
      body: SafeArea(
        child: Center(
          child: _buildText(_bloc),
        ),
      ),
    );
  }
  
  Widget _buildText(HomeBloc bloc) {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Base url :', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
              Text(state.baseUrl, style: const TextStyle(
                fontSize: 18,
              )),
            ],
          );
        },
    );
  }
  
}

import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeStateInit extends HomeState {
  final String baseUrl;

  const HomeStateInit(this.baseUrl);

  @override
  List<Object> get props => [baseUrl];
}

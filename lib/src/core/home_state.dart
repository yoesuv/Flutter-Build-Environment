import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final String baseUrl;

  const HomeState({this.baseUrl = ''});

  HomeState copyWith({String? baseUrl}) {
    return HomeState(
      baseUrl: baseUrl ?? this.baseUrl,
    );
  }

  @override
  List<Object> get props => [baseUrl];
}

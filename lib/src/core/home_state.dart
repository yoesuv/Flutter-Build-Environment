import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final String baseUrl;
  final String packageName;

  const HomeState({this.baseUrl = '', this.packageName = ''});

  HomeState copyWith({String? baseUrl, String? packageName}) {
    return HomeState(
      baseUrl: baseUrl ?? this.baseUrl,
      packageName: packageName ?? this.packageName,
    );
  }

  @override
  List<Object> get props => [baseUrl, packageName];
}

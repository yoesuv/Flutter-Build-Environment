enum Flavor { development, staging, production }

extension FlavorExtension on Flavor {
  String get value {
    switch (this) {
      case Flavor.production:
        return 'production';
      case Flavor.staging:
        return 'staging';
      default:
        return 'development';
    }
  }
}

class FlavorConfig {
  final String baseUrl;
  final String packageName;

  const FlavorConfig._({required this.baseUrl, required this.packageName});

  FlavorConfig.production({required String packageName})
    : this._(
        baseUrl: 'https://production.flutter.com',
        packageName: packageName,
      );

  FlavorConfig.staging({required String packageName})
    : this._(baseUrl: 'https://staging.flutter.com', packageName: packageName);

  FlavorConfig.development({required String packageName})
    : this._(
        baseUrl: 'https://development.flutter.com',
        packageName: packageName,
      );

  Map toJson() => {'baseUrl': baseUrl};

  @override
  String toString() {
    return toJson().toString();
  }
}

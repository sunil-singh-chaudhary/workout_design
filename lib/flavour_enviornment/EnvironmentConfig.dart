class EnvironmentConfig {
  static const String development = 'development';
  static const String staging = 'staging';
  static const String production = 'production';

  static String apiUrl(String env) {
    switch (env) {
      case development:
        return 'https://dev-api.example.com';
      case staging:
        return 'https://staging-api.example.com';
      case production:
        return 'https://api.example.com';
      default:
        return '';
    }
  }
}

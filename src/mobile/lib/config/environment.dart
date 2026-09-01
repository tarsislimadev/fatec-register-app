class Environment {
  static const String apiUrl = String.fromEnvironment('API_URL', defaultValue: 'http://api:3000');

  static const String apiVersion = '/api/v1';

  static String get baseUrl => '$apiUrl$apiVersion';

  static String appName() => String.fromEnvironment('APP_NAME', defaultValue: 'Fatec Register');
}

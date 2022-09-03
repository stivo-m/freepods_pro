class AppStrings {
  static const String appVersion = String.fromEnvironment(
    'APP_VERSION',
    defaultValue: '1.0.0',
  );
  static const String scanningText = 'Scanning Nearby Freepods';
  static const String scanningDescription =
      'Make sure your Freepods are turned on and keep them within distance of your mobile phone';
  static const String deviceNotFound = 'Device Not Found';
  static const String tryAgain = 'Try again';
  static const String ownerText = 'Steven\'s Freepods Pro';
  static const String connectedTo = 'Connected to Steven\'s phone';
  static const String noiseCancellation = 'Noise cancellation';
  static const String noiseCancellationOff = 'Turn OFF';
  static const String transparencyMode = 'Transparency Mode';
}

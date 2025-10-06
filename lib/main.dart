import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'core/routes/app_routes.dart';
import 'core/theme/app_theme.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => GoDietApp(), // Wrap your app
  ),
);

class GoDietApp extends StatelessWidget {
  const GoDietApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoDiet',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // theme global
      initialRoute: AppRoutes.splash, // layar pertama
      routes: AppRoutes.routes, // daftar route
    );
  }
}

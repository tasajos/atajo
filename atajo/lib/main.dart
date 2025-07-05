// lib/main.dart
import 'package:flutter/material.dart';
import 'src/core/router/app_router.dart'; // Importamos nuestro router

void main() {
  runApp(const AtajoApp());
}

class AtajoApp extends StatelessWidget {
  const AtajoApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Cambiamos MaterialApp por MaterialApp.router
    return MaterialApp.router(
      title: 'Atajo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Tu tema se mantiene exactamente igual
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        fontFamily: 'Lato',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 1,
        ),
        cardTheme: CardThemeData(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      // 2. Reemplazamos 'home' por 'routerConfig'
      routerConfig: AppRouter.router,
    );
  }
}
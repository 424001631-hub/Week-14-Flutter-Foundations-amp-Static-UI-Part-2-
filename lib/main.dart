import 'package:flutter/material.dart';
import 'dashboard_screen.dart';
import 'signup_screen.dart';

void main() {
  runApp(const NbsbPortalApp());
}

class NbsbPortalApp extends StatelessWidget {
  const NbsbPortalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NBSB Portal',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFF1A365D),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
        ),
        useMaterial3: true,
      ),
      // Toggle between SignUpScreen() and DashboardScreen() as needed
      // home: const SignUpScreen(),
      home: const DashboardScreen(),
    );
  }
}
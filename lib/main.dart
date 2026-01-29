import 'package:flutter/material.dart';
import 'package:movie_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // =============== LIGHT THEME =================
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        // add more theme properties like scaffoldBackgroundColor, colorScheme, appbarTheme, textTheme etc.
      ),
      // =============== DARK THEME =================
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        // add more theme properties like scaffoldBackgroundColor, colorScheme, appbarTheme, textTheme etc.
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppColors {
  // Dark theme colors
  // change colors as per your preference
  static const Color darkBackground = Color(0xFF0D0D0D);
  static const Color darkSurface = Color(0xFF1A1A1A);
  static const Color accentRed = Color(0xFFE50914);

  // Light theme colors
  static const Color lightBackground = Color(0xFFF5F5F5);
  static const Color lightSurface = Colors.white;
}

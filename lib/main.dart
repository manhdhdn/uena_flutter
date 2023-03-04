import 'package:event_app/present/bottom_bar_navigation/bottom_bar_navigation.dart';
import 'package:event_app/present/login_screen/login_screen.dart';
import 'package:event_app/present/register_screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.dongleTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const LoginScreen(),
        '/registerScreen': (context) => const RegisterScreen(),
        '/homeScreen': (context) => BottomBarNavigation(selectedIndex: 0, isBottomNav: true),
        '/eventScreen': (context) => BottomBarNavigation(selectedIndex: 1, isBottomNav: true),
        '/favoriteScreen': (context) => BottomBarNavigation(selectedIndex: 4, isBottomNav: true),

      },
    );
  }
}

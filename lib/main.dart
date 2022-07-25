import 'package:application/Pages/MainPage.dart';
import 'package:application/Pages/StartScreen/Screen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'Pages/Login Page/LoginScreen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  WidgetsFlutterBinding.ensureInitialized();
SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      runApp(MyApp());
}
  Future initialization(BuildContext context) async{
    await Future.delayed(Duration(seconds: 5));
   FlutterNativeSplash.remove();
  }

class MyApp extends StatelessWidget {
  MaterialColor kPrimaryColor = const MaterialColor(
    0xffe4e6f3,
    <int, Color>{
      50: const Color(0xFF0E7AC7),
      100: const Color(0xFF0E7AC7),
      200: const Color(0xFF0E7AC7),
      300: const Color(0xFF0E7AC7),
      400: const Color(0xFF0E7AC7),
      500: const Color(0xFF0E7AC7),
      600: const Color(0xFF0E7AC7),
      700: const Color(0xFF0E7AC7),
      800: const Color(0xFF0E7AC7),
      900: const Color(0xFF0E7AC7),
    },
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        
        primarySwatch: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

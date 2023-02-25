import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio_website/pages/home_page/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.dmSansTextTheme().apply(bodyColor: Colors.white),
        scaffoldBackgroundColor: Colors.black12,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          // titleTextStyle: GoogleFonts.dmSans(color: Colors.blue[100],fontSize: 24),
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      // darkTheme: ThemeData(),
      themeMode: ThemeMode.dark,
      routes: {
        'home': (context) =>  HomePage(),
// 'login': (context) => LoginPage(),
// 'splash': (context) => SplashScreen(),
      },
      initialRoute: 'home',
      // home:  HomePage(),
    );
  }
}

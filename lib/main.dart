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

      ),
       darkTheme: ThemeData.dark(useMaterial3: true),
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

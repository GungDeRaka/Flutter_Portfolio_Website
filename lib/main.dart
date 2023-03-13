import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio_website/pages/home_page/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return ResponsiveWrapper.builder(
          child,
          maxWidth: 1300,
          minWidth: 480,
          defaultScale: true,
          breakpoints:const [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.resize(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
          ],
        );
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.dark,
      routes: {
        'home': (context) => HomePage(),
// 'login': (context) => LoginPage(),
// 'splash': (context) => SplashScreen(),
      },
      initialRoute: 'home',
      // home:  HomePage(),
    );
  }
}

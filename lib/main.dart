import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yu_gi_oh/screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yu-Gi-oh',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: ePrimaryColor,
        accentColor: ePrimaryColor,
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar","AE")],
      locale: Locale("ar","AE"),
      home: HomeScreen(),
    );
  }
}


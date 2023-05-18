import 'package:departure/controllers/providers/sholka_provider.dart';
import 'package:departure/views/screens/Home_page.dart';
import 'package:departure/views/screens/sholka_details_page.dart';
import 'package:departure/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main(){
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => JsonProvider()),
      ],
      builder: (context , _){
        return MaterialApp(
          theme: ThemeData.light(useMaterial3: true),
          darkTheme: ThemeData.dark(useMaterial3: true),
          debugShowCheckedModeBanner: false,
          routes: {
            "Home_page": (context) => Home_page(),
            "/": (context) => SplashScreen(),
            "sholka_details_page": (context) => sholka_details_page(),
          },
        );
      },
    ),
  );
}


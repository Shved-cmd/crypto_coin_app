import 'package:flutter/material.dart';

final darkTheme =  ThemeData(
        scaffoldBackgroundColor:const Color.fromARGB(133, 36, 36, 36),
        primarySwatch: Colors.yellow,
        dividerColor: Colors.white30,
        listTileTheme: ListTileThemeData(iconColor: Colors.white),
        appBarTheme: AppBarTheme(backgroundColor: Color.fromARGB(133, 36, 36, 36), titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700) ),
            textTheme:  TextTheme(
            bodyMedium: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
            labelSmall: TextStyle(
              color: Colors.white.withOpacity(0.6), 
              fontWeight: FontWeight.w700, fontSize: 14
              ),
              ),
      );
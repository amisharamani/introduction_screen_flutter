

import 'package:counter_app/provider/counter_provider.dart';
import 'package:counter_app/provider/them_provider.dart';
import 'package:counter_app/views/screens/homepage.dart';
import 'package:counter_app/views/screens/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){

  runApp(
    MultiProvider(providers: [
        ChangeNotifierProvider(create: (context)=>CounterProvider()),
      ChangeNotifierProvider(create: (context)=>ThemeProvider()),

    ],
      builder: (context,_)=>MaterialApp(

        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
            textTheme: TextTheme(
                displayLarge: TextStyle(
                  color: Colors.indigo,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                )
            ),
            colorScheme: ColorScheme.light(
              brightness: Brightness.light,
              primary: Colors.greenAccent,
            )
        ),
        darkTheme: ThemeData(
            appBarTheme: AppBarTheme(color: Colors.red),
            colorScheme: ColorScheme.dark(
              brightness: Brightness.dark,
              primary: Colors.green,
              secondary: Colors.grey,
            )
        ),

        themeMode: (Provider.of<ThemeProvider>(context).themeMode.isDark)?ThemeMode.dark:ThemeMode.light,

        routes: {
          'HomePage':(context)=>HomePage(),
         '/':(context)=>intro_screen(),
       },
      ),
    )
  );
}
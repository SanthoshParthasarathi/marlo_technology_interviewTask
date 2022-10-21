import 'package:flutter/material.dart';
import 'package:marlo_interview_task/screens/firstscreen.dart';
import 'package:marlo_interview_task/screens/homepage.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';

void main() async {
  runApp(
    EasyDynamicThemeWidget(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var lightThemeData = new ThemeData(
        primaryColor: Colors.blue,
        textTheme: new TextTheme(button: TextStyle(color: Colors.white70)),
        brightness: Brightness.light,
        accentColor: Colors.blue);

    var darkThemeData = ThemeData(
        primaryColor: Colors.blue,
        textTheme: new TextTheme(button: TextStyle(color: Colors.black54)),
        brightness: Brightness.dark,
        accentColor: Colors.blue);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: EasyDynamicTheme.of(context).themeMode,
      home: FirstScreen(),
    );
  }
}

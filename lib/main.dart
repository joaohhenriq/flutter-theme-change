import 'package:flutter/material.dart';
import 'package:flutter_theme_change/app_theme.dart';
import 'package:flutter_theme_change/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: HomePage()
    );
  }
}
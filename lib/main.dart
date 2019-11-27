import 'package:flutter/material.dart';
import 'package:flutter_theme_change/app_theme.dart';
import 'package:flutter_theme_change/pages/home_page.dart';
import 'package:flutter_theme_change/provider/app_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider<AppProvider>(
    create: (context) => AppProvider(),
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, appProvider, child){
        return MaterialApp(
            title: 'Flutter Demo',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: appProvider.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
            home: HomePage()
        );
      },
    );
  }
}
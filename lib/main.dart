import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:new_project/view/anmetsd.dart';

import 'get/get_other.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name;
  bool isLoding = true;
  int num = 12;
  Widget screen;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name = "ahmed";
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: 'flutter app',
      home:GitXu(),
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('ar', ''),
      ],
      localeResolutionCallback: (currentLocales, supportedLocales) {
        if (currentLocales != null) {
          print(currentLocales.languageCode);
          for (Locale locale in supportedLocales) {
            if (currentLocales.languageCode == locale.languageCode) {
              return currentLocales;
            }
          }
        }
        return supportedLocales.first;
      },
    );
  }
}

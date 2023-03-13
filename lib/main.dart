import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_adflutter/screens/settings_screen/provider/settings_provider.dart';
import 'package:setting_adflutter/screens/settings_screen/view/settings_ios.dart';
import 'package:setting_adflutter/screens/settings_screen/view/settings_ui.dart';


bool check=false;

void main() {
  runApp(
    Consumer(
      builder: (context, value, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => seetingpro(),
          )
        ],
        child: Platform.isAndroid?ios():android(),
        // check==false ?ios() : android(),
      ),
    ),
  );
}

Widget android() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => settings(),
    },
  );
}

Widget ios() {
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (p0) => ios_settings(),
    },
  );
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_adflutter/screens/settings_screen/provider/settings_provider.dart';
import 'package:setting_adflutter/screens/settings_screen/view/settings_ui.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => seetingpro(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => settings(),
        },
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_adflutter/screens/settings_screen/provider/settings_provider.dart';
class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {

  seetingpro? provifalse;
  seetingpro? provitrue;
  @override
  Widget build(BuildContext context) {
    provifalse = Provider.of<seetingpro>(context, listen: false);
    provitrue = Provider.of<seetingpro>(context, listen: true);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Settings"),
            backgroundColor: Colors.black,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                      ),
                      child: Text(
                        "Common",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.grey)),
                  child: ListTile(
                    title:
                        Text("language", style: TextStyle(color: Colors.black)),
                    leading: Icon(Icons.language_outlined, color: Colors.black),
                    subtitle: Text("English"),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.grey)),
                  child: ListTile(
                    title:
                        Text("Enviroment", style: TextStyle(color: Colors.black)),
                    leading: Icon(Icons.cloud, color: Colors.black),
                    subtitle: Text("production"),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                      ),
                      child: Text(
                        "Account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.grey)),
                  child: ListTile(
                    title: Text("Phone number",
                        style: TextStyle(color: Colors.black)),
                    leading: Icon(Icons.call, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.grey)),
                  child: ListTile(
                    title: Text("Email", style: TextStyle(color: Colors.black)),
                    leading: Icon(Icons.email, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.grey)),
                  child: ListTile(
                    title:
                        Text("Sign Out", style: TextStyle(color: Colors.black)),
                    leading: Icon(Icons.reset_tv, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                      ),
                      child: Text(
                        "Security",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.grey)),
                  child: ListTile(
                    title: Text("Lock app in Background",
                        style: TextStyle(color: Colors.black)),
                    leading: Icon(Icons.security, color: Colors.black),
                    trailing: Switch(
                      onChanged: (value) {
                        provifalse!.Chack1(value);
                        // provitrue!.onoff();
                      },
                    value: provitrue!.s1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.grey)),
                  child: ListTile(
                    title: Text("Use fingerprint",
                        style: TextStyle(color: Colors.black)),
                    leading: Icon(Icons.fingerprint, color: Colors.black),
                    trailing: Switch(
                      onChanged: (value) {
                provifalse!.Chack2(value);
                // provitrue!.onoff();
                },
                  value: provitrue!.s2,
                ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.grey)),
                  child: ListTile(
                    title: Text("Chang Passwored",
                        style: TextStyle(color: Colors.black)),
                    leading: Icon(Icons.lock, color: Colors.black),
                    trailing: Switch(
                      onChanged: (value) {
                        provifalse!.Chack3(value);
                        // provitrue!.onoff();
                      },
                      value: provitrue!.s3,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                      ),
                      child: Text(
                        "Security",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.grey)),
                  child: ListTile(
                    title: Text("Lock app in Background",
                        style: TextStyle(color: Colors.black)),
                    leading: Icon(Icons.security, color: Colors.black),
                    trailing:Switch(
                      onChanged: (value) {
                        provifalse!.Chack4(value);
                        // provitrue!.onoff();
                      },
                      value: provitrue!.s4,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.grey)),
                  child: ListTile(
                    title: Text("Use fingerprint",
                        style: TextStyle(color: Colors.black)),
                    leading: Icon(Icons.fingerprint, color: Colors.black),
                    trailing: Switch(
                      onChanged: (value) {
                        provifalse!.Chack5(value);
                        // provitrue!.onoff();
                      },
                      value: provitrue!.s5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.grey)),
                  child: ListTile(
                    title: Text("Chang Passwored",
                        style: TextStyle(color: Colors.black)),
                    leading: Icon(Icons.lock, color: Colors.black),
                    trailing: Switch(
                      onChanged: (value) {
                        provifalse!.Chack6(value);
                        // provitrue!.onoff();
                      },
                      value: provitrue!.s6,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

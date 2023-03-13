import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:setting_adflutter/main.dart';

import '../provider/settings_provider.dart';

class ios_settings extends StatefulWidget {
  const ios_settings({Key? key}) : super(key: key);

  @override
  State<ios_settings> createState() => _ios_settingsState();
}

class _ios_settingsState extends State<ios_settings> {
  seetingpro? provifalse;
  seetingpro? provitrue;

  @override
  Widget build(BuildContext context) {
    provifalse = Provider.of<seetingpro>(context, listen: false);
    provitrue = Provider.of<seetingpro>(context, listen: true);
    return SafeArea(
        child: CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Settings ui"),
      ),
      child: SingleChildScrollView(
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
                        color: CupertinoColors.black,
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
                  color: CupertinoColors.white,
                  border: Border.all(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: CupertinoColors.inactiveGray)),
              child: CupertinoListTile(
                title: Text("language",
                    style: TextStyle(color: CupertinoColors.black)),
                leading:
                    Icon(CupertinoIcons.nosign, color: CupertinoColors.black),
                subtitle: Text("English"),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: CupertinoColors.inactiveGray)),
              child: CupertinoListTile(
                title: Text("Enviroment",
                    style: TextStyle(color: CupertinoColors.black)),
                leading: Icon(CupertinoIcons.cloud, color: CupertinoColors.black),
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
                        color: CupertinoColors.black,
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
                  color: CupertinoColors.white,
                  border: Border.all(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: CupertinoColors.inactiveGray)),
              child: CupertinoListTile(
                title: Text("Phone number",
                    style: TextStyle(color: CupertinoColors.black)),
                leading: Icon(CupertinoIcons.phone, color: CupertinoColors.black),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: CupertinoColors.inactiveGray)),
              child: CupertinoListTile(
                title:
                    Text("Email", style: TextStyle(color: CupertinoColors.black)),
                leading: Icon(CupertinoIcons.mail, color: CupertinoColors.black),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: CupertinoColors.inactiveGray)),
              child: CupertinoListTile(
                title: Text("Sign Out",
                    style: TextStyle(color: CupertinoColors.black)),
                leading:
                    Icon(CupertinoIcons.restart, color: CupertinoColors.black),
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
                        color: CupertinoColors.black,
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
                  color: CupertinoColors.white,
                  border: Border.all(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: CupertinoColors.inactiveGray)),
              child: CupertinoListTile(
                title: Text("Lock app in Background",
                    style: TextStyle(color: CupertinoColors.black)),
                leading: Icon(CupertinoIcons.lock, color: CupertinoColors.black),
                trailing: CupertinoSwitch(
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
                  color: CupertinoColors.white,
                  border: Border.all(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: CupertinoColors.inactiveGray)),
              child: CupertinoListTile(
                title: Text("Use fingerprint",
                    style: TextStyle(color: CupertinoColors.black)),
                leading: Icon(CupertinoIcons.lock, color: CupertinoColors.black),
                trailing: CupertinoSwitch(
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
                  color: CupertinoColors.white,
                  border: Border.all(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: CupertinoColors.inactiveGray)),
              child: CupertinoListTile(
                title: Text("Chang Passwored",
                    style: TextStyle(color: CupertinoColors.black)),
                leading: Icon(CupertinoIcons.lock, color: CupertinoColors.black),
                trailing: CupertinoSwitch(
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
                        color: CupertinoColors.black,
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
                  color: CupertinoColors.white,
                  border: Border.all(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: CupertinoColors.inactiveGray)),
              child: CupertinoListTile(
                title: Text("Lock app in Background",
                    style: TextStyle(color: CupertinoColors.black)),
                leading: Icon(CupertinoIcons.lock, color: CupertinoColors.black),
                trailing: CupertinoSwitch(
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
                  color: CupertinoColors.white,
                  border: Border.all(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: CupertinoColors.inactiveGray)),
              child: CupertinoListTile(
                title: Text("Use fingerprint",
                    style: TextStyle(color: CupertinoColors.black)),
                leading: Icon(CupertinoIcons.lock, color: CupertinoColors.black),
                trailing:CupertinoSwitch(
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
                  color: CupertinoColors.white,
                  border: Border.all(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: CupertinoColors.inactiveGray)),
              child: CupertinoListTile(
                title: Text("Chang Passwored",
                    style: TextStyle(color: CupertinoColors.black)),
                leading: Icon(CupertinoIcons.lock, color: CupertinoColors.black),
                trailing: CupertinoSwitch(
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
      ),
      backgroundColor: CupertinoColors.destructiveRed,
    ));
  }
}

import 'package:doh_kyaung_taw/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:doh_kyaung_taw/constants.dart';
import 'package:provider/provider.dart';
import 'package:doh_kyaung_taw/models/setting_data.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Theme.of(context).backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Image.asset('$imagePath/app_logo.png'),
          ),
          Expanded(
            child: MyDrawerListView(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onDoubleTap: () {
                showDeveloperDialog(context);
              },
              child: Text(
                '"ဒို့ကျောင်းတော်" အခမဲ့ပညာရေးဖောင်ဒေးရှင်းမှ ကျောင်းသားကျောင်းသူများ စီစဉ်ပါသည်။',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class MyDrawerListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void changeScreen() {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }

    return Consumer<SettingData>(
      builder: (context, settingData, child) {
        return ListView(
          children: <Widget>[
            ListTile(
              title: Text('အတန်းများ'),
              onTap: () {
                settingData.changeScreenIndex(0);
                changeScreen();
              },
            ),
            ListTile(
              title: Text('အထွေထွေဗဟုသုတ'),
              onTap: () {
                settingData.changeScreenIndex(1);
                changeScreen();
              },
            ),
            ListTile(
              title: Text('အရောင်'),
              trailing: Image.asset(
                settingData.getThemeStatus
                    ? '$imagePath/nighttime.png'
                    : '$imagePath/sun.png',
                height: 30,
              ),
              onTap: () {
                settingData.changeTheme();
              },
            ),
            ListTile(
              title: Text(
                'About "ဒို့ကျောင်းတော်"',
              ),
              onTap: () {
                settingData.changeScreenIndex(2);
                changeScreen();
              },
            ),
          ],
        );
      },
    );
  }
}

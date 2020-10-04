import 'package:doh_kyaung_taw/models/setting_data.dart';
import 'package:flutter/material.dart';
import 'package:doh_kyaung_taw/constants.dart';
import 'my_drawer.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Center(
          child: home_widgetOption
              .elementAt(Provider.of<SettingData>(context).selectedScreenIndex),
        ),
      ),
    );
  }
}

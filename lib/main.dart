import 'package:flutter/material.dart';
import 'package:doh_kyaung_taw/screens/home_screen.dart';
import 'package:doh_kyaung_taw/models/setting_data.dart';
import 'package:provider/provider.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingData(),
      builder: (context, child) => MaterialApp(
        theme: Provider.of<SettingData>(context).getThemeStatus
            ? darkThemeData
            : lightThemeData,
        home: HomeScreen(),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';

class SettingData extends ChangeNotifier {
  bool appThemeDark = true;
  int selectedScreenIndex = 0;

  bool get getThemeStatus {
    return appThemeDark;
  }

  void changeTheme() {
    appThemeDark = !appThemeDark;
    notifyListeners();
  }

  void changeScreenIndex(int newIndex) {
    selectedScreenIndex = newIndex;
    notifyListeners();
  }
}

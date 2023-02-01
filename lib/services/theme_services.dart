import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class ThemeServices {
  // its work like json................
  final _box = GetStorage();
  final _key = "isDarkMode";
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  // we save in bool dark or not
  bool _loadThemeFromBox() => _box.read(_key) ?? false;

  // themeMode if return true or not ......................
  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  // switching theme..........
  void switchTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }
}

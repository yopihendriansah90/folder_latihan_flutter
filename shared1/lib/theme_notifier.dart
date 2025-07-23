import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _isDarkMode = false;
bool get isDarkMode =>_isDarkMode;

ThemeNotifier(){
  _loadFormPresfs();
}
void togleTheme(bool isOn){
  _isDarkMode=isOn;
  _saveToPrefs();
  notifyListeners();
}

Future<void> _loadFormPresfs()async{
  final prefs = await SharedPreferences.getInstance();
  _isDarkMode = prefs.getBool('isDarkMode')?? false;
  notifyListeners();


}

Future<void> _saveToPrefs() async{
  final prefs=await SharedPreferences.getInstance();
  prefs.setBool('isDarkMode', _isDarkMode);
}

}
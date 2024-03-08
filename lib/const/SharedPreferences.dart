import 'package:gessing_numbers_game/const/const.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveData() async {
  final SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setInt("langIdx", langIdx);
  await _prefs.setInt("themIdx", themIdx);
  await _prefs.setInt("maxRate", maxRate);
  await _prefs.setDouble("fontSize", fontSize);
}

Future<void> getData() async {
  final SharedPreferences _prefs = await SharedPreferences.getInstance();

  if (_prefs.getInt('langIdx') != null) {
    langIdx = _prefs.getInt('langIdx')!;
  }
  if (_prefs.getInt('themIdx') != null) {
    themIdx = _prefs.getInt('themIdx')!;
  }
  if (_prefs.getInt('maxRate') != null) {
    maxRate = _prefs.getInt('maxRate')!;
  }
  if (_prefs.getDouble('fontSize') != null) {
    fontSize = _prefs.getDouble('fontSize')!;
  }
}

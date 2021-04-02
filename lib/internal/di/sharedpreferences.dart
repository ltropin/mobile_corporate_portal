import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDI {
  final SharedPreferences prefs;
  SharedPreferencesDI(this.prefs);

  static Future<SharedPreferencesDI> initPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    return SharedPreferencesDI(prefs);
  }
}
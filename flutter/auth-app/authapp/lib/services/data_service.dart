import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

class DataService {
  Future<SharedPreferences> init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  }

  Future<bool> savePreference(SharedPreferences? prefs, name) async {
    if (prefs!=null) {
      
    return await prefs.setString('firstname', name);
    }
    return false;
  }

  Future<String?> readPreference() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.getString('firstname');
  }
}

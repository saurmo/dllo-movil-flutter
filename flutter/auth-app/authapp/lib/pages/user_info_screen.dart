import 'package:authapp/services/data_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:authapp/main.dart';
import 'package:authapp/services/firebase_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserInfoScreen extends StatefulWidget {
  final User _user;

  const UserInfoScreen({Key? key, required User user})
      : _user = user,
        super(key: key);

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  late User _user;
  bool loading = false;
  String? displayName = "";

  TextStyle title = const TextStyle(fontSize: 26);
  DataService dataService = DataService();
  SharedPreferences? prefs = null;

  @override
  void initState() {
    dataService.init().then((value) {
      print("init");
      prefs = value;
    });
    _user = widget._user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: Text("Perfil")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loadImage(),
                const SizedBox(height: 16.0),
                Text('Hola', style: title),
                const SizedBox(height: 8.0),
                Text(_user.displayName!, style: title),
                const SizedBox(height: 8.0),
                Text('(${_user.email!})', style: const TextStyle(fontSize: 15)),
                const SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () async {
                    DataService dataService = DataService();
                    prefs = await dataService.init();
                    if (prefs != null) {
                      print(_user.displayName);
                      await dataService.savePreference(
                          prefs, _user.displayName);
                    }
                  },
                  child: const Text("Save firstname"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    DataService dataService = DataService();
                    displayName = await dataService.readPreference();
                  },
                  child: const Text("Read firstname: "),
                ),
                Text("$displayName"),
                loading
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.redAccent),
                        ),
                        onPressed: () async {
                          setState(() {
                            loading = true;
                          });
                          //   await FirebaseService.signOut(context: context);
                          setState(() {
                            loading = false;
                          });

                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => MyHomePage(
                                title: "",
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          'Salir',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ClipOval loadImage() {
    if (_user.photoURL != null) {
      return ClipOval(
        child: Material(
          child: Image.network(
            _user.photoURL!,
            fit: BoxFit.fitHeight,
            width: 100,
            height: 100,
          ),
        ),
      );
    } else {
      return const ClipOval(
        child: Material(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.person,
              size: 60,
            ),
          ),
        ),
      );
    }
  }
}

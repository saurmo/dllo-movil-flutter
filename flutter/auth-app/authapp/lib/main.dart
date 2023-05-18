import 'package:authapp/pages/user_info_screen.dart';
import 'package:authapp/services/data_service.dart';
import 'package:authapp/services/firebase_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DataService dataService = DataService();
  SharedPreferences? prefs = null;

  @override
  void initState() {
    // TODO: implement initState
    dataService.init().then((value) {
      print("init");
      prefs = value;
    });
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder(
          future: FirebaseService.firebaseInit(context),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      await FirebaseService.signInGoogle();
                    },
                    child: const Text("Iniciar con google"),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      User? user = await FirebaseService.signInWithGitHub();
                      print(user);
                      if (user != null) {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => UserInfoScreen(user: user),
                        //   ),
                        // );
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => UserInfoScreen(user: user),
                          ),
                          ModalRoute.withName(''),
                        );
                      }
                    },
                    child: const Text("Iniciar con github"),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      DataService dataService = DataService();
                      prefs = await dataService.init();
                      if (prefs != null) {
                        await dataService.savePreference(
                            prefs, "_user.displayName");
                      }
                    },
                    child: const Text("Save firstname"),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      DataService dataService = DataService();
                      String? displayName = await dataService.readPreference();
                      print(displayName);
                    },
                    child: const Text("Read firstname"),
                  ),
                ],
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}

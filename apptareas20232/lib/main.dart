import 'dart:io';

import 'package:apptareas20232/agenda/main.dart';
import 'package:apptareas20232/app_bottom_nav/view/AppBottom.dart';
import 'package:apptareas20232/app_camara/views/AppCamera.dart';
import 'package:apptareas20232/app_form_v2/AppFormsV2.dart';
import 'package:apptareas20232/app_form_v3_firebase/AppFormsFirebase.dart';
import 'package:apptareas20232/app_forms_v1/AppForms.dart';
import 'package:apptareas20232/app_gestos/AppGestos.dart';
import 'package:apptareas20232/app_login_providers/views/LoginProviders.dart';
import 'package:apptareas20232/app_scroll_infinity/AppScrollInfinity.dart';
import 'package:apptareas20232/bases/IconsTextsImages.dart';
import 'package:apptareas20232/bases/rowsColumnsContainers.dart';
import 'package:apptareas20232/state_config_files/controller/FileAdmin.dart';
import 'package:apptareas20232/state_config_provider/BlankPage.dart';
import 'package:apptareas20232/state_config_provider/BlankPage2.dart';
import 'package:apptareas20232/state_config_provider/BlankPage3.dart';
import 'package:apptareas20232/state_config_provider/StateProvider.dart';
import 'package:apptareas20232/ejemplo_lista_v2/views/home.dart';
import 'package:apptareas20232/ejemplo_listas_v1/views/detailZone.dart';
import 'package:apptareas20232/ejemplo_listas_v1/views/listZones.dart';
import 'package:apptareas20232/listas_v2/listav2.dart';
import 'package:apptareas20232/push_notification/HomePushNotification.dart';
import 'package:apptareas20232/styles.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Requerido para usar funciones asíncronas en main.

  await FirebaseConfig();

  await guardarEnArchivo('{}');
// Leer datos desde el archivo.
  String datos = await leerDesdeArchivo();
  print('Datos leídos desde el archivo: $datos');

  runApp(AppBases());
}

Future<void> FirebaseConfig() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    try {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message data: ${message.notification?.body}');

        print('Message also contained a notification: ${message.notification}');
      }
    } catch (e) {
      print('ERROR');
      print(e);
    }
  });
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class AppBases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return StateProvider();
      },
      child: AppMain(),
    );
  }
}

class AppMain extends StatelessWidget {
  const AppMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: createScaffold(context),
      routes: {
        "camera": (context) => AppCamera(),
        "blank_page": (context) => BlankPage(),
        "blank_page2": (context) => BlankPage2(),
        "blank_page3": (context) => BlankPage3(),
        "push": (context) => HomePushNotification(),
        "login_provider": (context) => LoginProvider(),
        "app_form_firebase": (context) => AppFormsFirebase(),
        "places": (context) => ListZones(),
        "agenda": (context) => AgendaMain(),
        "bases1": (context) => IconsTextsImages(),
        "bases2": (context) => RowsColumnsContainers(),
        "frases": (context) => HomeFrases(),
        "app_bottom_nav": (context) => AppBottom(),
        "app_form_v1": (context) => AppForms(),
        "app_form_v2": (context) => AppFormsV2(),
        "app_gestos": (context) => AppGestos(),
        "app_scroll": (context) => AppScrollInfinity(),
      },
    );
  }
}

createScaffold(ctx) {
  List examples = [
    {"name": "Camera", "route": "camera"},
    {"name": "Blank Page", "route": "blank_page"},
    {"name": "Blank Page 2", "route": "blank_page2"},
    {"name": "Blank Page 3", "route": "blank_page3"},
    {"name": "Dialog", "dialog": true},
    {"name": "Push", "route": "push"},
    {"name": "App Login Providers", "route": "login_provider"},
    {"name": "App Firebase Database", "route": "app_form_firebase"},
    {"name": "Widgets básicos Primera parte", "route": "bases1"},
    {"name": "Widgets básicos Segunda parte", "route": "bases2"},
    {"name": "Lista de lugares", "route": "places"},
    {"name": "Agenda de contactos", "route": "agenda"},
    {"name": "Lista frases", "route": "frases"},
    {"name": "App Bottom Nav", "route": "app_bottom_nav"},
    {"name": "App Formularios v1", "route": "app_form_v1"},
    {"name": "App Formularios v2", "route": "app_form_v2"},
    {"name": "App Gestos", "route": "app_gestos"},
    {"name": "App Scroll Infinity", "route": "app_scroll"},
  ];
  return Scaffold(
    appBar: AppBar(title: const Text("Lista de Apps 2023-2")),
    bottomNavigationBar: ElevatedButton(
        onPressed: () {
          createAlertDialog(ctx);
        },
        child: Text("Di")),
    body: ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(examples[index]["name"]),
          onTap: () {
            if (examples[index]["dialog"] == true) {
              createAlertDialog(ctx);
            } else {
              routing(context, examples[index]["route"]);
            }
          },
        );
      },
      itemCount: examples.length,
      separatorBuilder: (context, index) => const Divider(
        color: Colors.black,
      ),
    ),
  );
}

void routing(BuildContext context, String route) {
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(
  //     builder: (context) => AgendaMain(),
  //   ),
  // );
  Navigator.pushNamed(context, route);
}

createAlertDialog(context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('AlertDialog Title'),
        content: const Text('AlertDialog description'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}

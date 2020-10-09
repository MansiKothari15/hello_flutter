import 'package:flutter/material.dart';
import 'package:helloflutter/dashboard.dart';
import 'package:helloflutter/login.dart';
import 'package:helloflutter/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(InitialPage());
}

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: Constants.prefs.getBool("LoggedIn") == true? Dashboard():Login()
    );
  }
}

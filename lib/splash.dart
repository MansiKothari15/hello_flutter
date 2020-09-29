import 'package:flutter/material.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Future<void> initState() {
    // TODO: implement initState
    super.initState();

    new Future.delayed(
      const Duration(seconds: 3),
          () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Login())
      ),
    );

  }

  @override
  Widget build(BuildContext context) {

    var assetsImage = new AssetImage(
        "assets/logo.png"); //<- Creates an object that fetches an image.
    var image = new Image(
        image: assetsImage,
        height:300);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple,
          ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[_buildTitle(context)],
                ),
              ],
            )), //<- place where the image appears
      ),
    );
  }
}

Widget _buildTitle(BuildContext context) {
  return Center(
    child: Container(
      child: Column(
        children: <Widget>[
          Container(
            child: new ClipRRect(
              borderRadius: new BorderRadius.circular(20.0),
              child: Image.asset(
                "assets/logo.png",
                fit: BoxFit.fill,
              ),
            ),
            /*height: getScreenHeight(context) / 8,
            width: getScreenHeight(context) / 8,*/
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Inventory Count",
              style: TextStyle(color: Colors.white, fontSize: 30.00),
            ),
          )
        ],
      ),
    ),
  );
}

/*
Future<String> getStringValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String merchant_id = prefs.getString('merchant_id');
  return merchant_id;
}*/

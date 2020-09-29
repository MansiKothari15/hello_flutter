import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
          appBar: AppBar(
            title: Text("Date & Time"),
            backgroundColor: Colors.deepPurple,
          ),
          body: Material(
            color: Colors.white,
            child: Center(child: Text(sayHello(),
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 34.0, color: Colors.black),),),
          ),
    );
  }

String sayHello(){
    String hello;
    DateTime now = DateTime.now();
    int hour = now.hour;
    int minutes = now.minute;
    String minute = (minutes < 10) ? "0"+ minutes.toString() : minutes.toString();

    if(hour < 12){
      hello = "Hello, Good Morning!";
      return "It's now "+ hour.toString() + ":"+ minute +" AM"+".\n"+ hello;
    }else if(hour < 18){
      hello = "Hello, Good Afternoon All!";
      return "It's now "+ hour.toString() + ":"+ minute +" PM"+".\n"+ hello;
    }else{
      hello = "Hello, Good Evening!";
      return "It's now "+ hour.toString() + ":"+ minute +" PM"+".\n"+ hello;
    }
}

}
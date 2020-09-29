import 'package:flutter/material.dart';

class MyFavouriteCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _favouritecity();
  }

}

class _favouritecity extends State<MyFavouriteCity>{
  var name = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite City"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String input){
                setState(() {
                  name = input;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Your fav city is $name",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }

}
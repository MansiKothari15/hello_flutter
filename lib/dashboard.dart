import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloflutter/home.dart';
import 'package:helloflutter/networkcall.dart';
import 'package:helloflutter/note.dart';
import 'package:helloflutter/photos.dart';
import 'package:helloflutter/tabs.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Dashboard';
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Column(children: [
              new Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://i.imgur.com/BoN9kdC.png")
                      )
                  )),
              Text(
                'Welcome User!',
                style: TextStyle(
                    fontSize: 25.0, fontFamily: 'Raleway', color: Colors.white),
              ),
            ]),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(Icons.date_range),
            ),
            title: Text(
              'Date & Time',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  fontFamily: 'Raleway',
                  color: Colors.deepPurple),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
              // Update the state of the app.
              // ...
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(Icons.note),
            ),
            title: Text(
              'Notes',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  fontFamily: 'Raleway',
                  color: Colors.deepPurple),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NoteList()),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(Icons.train),
            ),
            title: Text(
              'Transport',
              style: TextStyle(
                  fontSize: 17.0,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TabBarDemo()),
              );
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(Icons.network_check),
            ),
            title: Text(
              'Network Call',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  fontFamily: 'Raleway',
                  color: Colors.deepPurple),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(Icons.photo),
            ),
            title: Text(
              'Take Picture',
              style: TextStyle(
                  fontSize: 17.0,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TakePictureScreen(camera: null)),
              );
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ) // Populate the Drawer in the next step.
          ),
      body: Center(
        child: ListView(
          children: [
            titleSection,
            horizontalList,
            staticList,
          ],
        ),
      ),
    );
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
        FavoriteWidget()
      ],
    ),
  );

  Widget horizontalList = Container(
    margin: EdgeInsets.symmetric(vertical: 20.0),
    height: 200.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 160.0,
            decoration: new BoxDecoration(
                color: Colors.red,
                shape: BoxShape.rectangle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                        "https://i.imgur.com/BoN9kdC.png")
                )
            )
        ),
        Container(
          width: 160.0,
          color: Colors.blue,
        ),
        Container(
          width: 160.0,
          color: Colors.green,
        ),
        Container(
          width: 160.0,
          color: Colors.yellow,
        ),
        Container(
          width: 160.0,
          color: Colors.orange,
        ),
      ],
    ),
  );

  Widget staticList = Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map, color: Colors.deepOrange),
            title: Text('Map',style: TextStyle(color: Colors.deepOrange, fontFamily: "Raleway", fontSize: 20.0),),
          ),
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.deepOrange),
            title: Text('Album', style: TextStyle(color: Colors.deepOrange, fontFamily: "Raleway", fontSize: 20.0),),
          ),
          ListTile(
            leading: Icon(Icons.phone,color: Colors.deepOrange,),
            title: Text('Phone', style: TextStyle(color: Colors.deepOrange, fontFamily: "Raleway", fontSize: 20.0),),
          ),
        ],
      ));
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.deepOrange[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
// ···
}

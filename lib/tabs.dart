import 'package:flutter/material.dart';
import 'package:helloflutter/home.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car), text: "CAR",),
                Tab(icon: Icon(Icons.directions_transit), text: "TRAIN",),
                Tab(icon: Icon(Icons.directions_bike), text: "BIKE",),
              ],
            ),
            title: Text('Transport'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
    );
  }
}
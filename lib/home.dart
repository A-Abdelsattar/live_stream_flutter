import 'package:first_project1/live_screen.dart';
import 'package:flutter/material.dart';

import 'call.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyCall(callID: "1")));
              },
              child: Text("Join Call"),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LiveScreen(isHost: true,liveId: '1',)));
              },
              child: Text("Join Call"),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LiveScreen(isHost: false,liveId: '1',)));
              },
              child: Text("Join Call"),
            ),
          ),
        ],
      ),
    );
  }}

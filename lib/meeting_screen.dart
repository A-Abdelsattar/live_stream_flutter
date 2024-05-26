import 'dart:math';

import 'package:first_project1/video_call_screen.dart';
import 'package:flutter/material.dart';
import 'jitsi_meet_methods.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({super.key});

  final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();

  createNewMeeting() async {
    var random = Random();
    var uniqueRoomName = "yc" + "_" + DateTime.now().millisecondsSinceEpoch.toString();

    String roomName = (random.nextInt(20000000) + 10000000).toString();
    _jitsiMeetMethods.createMeeting(
        roomName: uniqueRoomName, isAudioMuted: true, isVideoMuted: true);
  }

  joinMeeting(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoCallScreen()));
    // Navigator.pushNamed(context, '/video-call');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text("hjjjjjjjjjjj"),
          // ElevatedButton(onPressed: (){
          //   createNewMeeting();
          // }, child: Text("aaaa"))
          SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){createNewMeeting();},
                child:Text('New Meeting'),
              ),
              ElevatedButton(
                onPressed:() {joinMeeting(context);
                  },
                child:Text('Join Meeting'),
              ),
            ],
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Create/Join Meetings with just a click!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

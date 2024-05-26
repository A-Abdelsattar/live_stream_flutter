

import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';

class JitsiMeetMethods {


  void createMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username = '',
  }) async {
    try {
      var options = JitsiMeetingOptions(roomNameOrUrl: roomName,
      userDisplayName: "ahmed",
        userEmail: "ahmed@gmail.com",
        isAudioMuted: isAudioMuted,
        isVideoMuted: isVideoMuted,
      );
      await JitsiMeetWrapper.joinMeeting(options: options);
    } catch (error) {
      print("error: $error");
    }
  }
}

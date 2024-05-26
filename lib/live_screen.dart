import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

import 'constants.dart';

final userId=Random().nextInt(10000).toString();
class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key, required this.liveId, required this.isHost});

  final String liveId;
  final bool isHost;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:ZegoUIKitPrebuiltLiveStreaming(
          appID: MyConst.appId, // your AppID,
          appSign: MyConst.appSign,
          userID: userId,
          userName: 'local user name',
          liveID: liveId,
          config: isHost
              ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
              : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
    ));
  }
}

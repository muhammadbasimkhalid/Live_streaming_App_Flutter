import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

final String userID = Random().nextInt(10000).toString();

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key, this.isHost = false});
  final bool isHost;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltLiveStreaming(
        appID: 2140724,
        appSign:
            '0b1430f7edd860e3ee7d20ccef999c261cc496802a6fe4c5c04f581391291916',
        userID: userID,
        userName: 'user_$userID',
        liveID: 'testLiveID',
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience());
  }
}

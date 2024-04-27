import 'dart:math';

import 'package:flutter/material.dart';
import 'package:live_streaming/screens/liveScreen.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment : MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () => jumpToLive(context, isHost: true),
                child: Text('Start a Live')),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => jumpToLive(context, isHost: false),
              child: Text('Watch a Live')),
        ],
      ),
    );
  }

  jumpToLive(BuildContext context, {required bool isHost}) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LiveScreen(isHost: isHost,)));
  }
}

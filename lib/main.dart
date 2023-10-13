import 'package:flutter/material.dart';
import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/services.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late VideoPlayerController _videoPlayerController;
  late CustomVideoPlayerController _customVideoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network('https://baratahmed.com/video.mp4')
                            ..initialize().then((value) => setState((){}));
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context,
        videoPlayerController: _videoPlayerController,
        customVideoPlayerSettings: CustomVideoPlayerSettings(
          placeholderWidget: Center(
            child: CircularProgressIndicator(),
          ),
          settingsButtonAvailable: false,
          deviceOrientationsAfterFullscreen: [
            DeviceOrientation.portraitUp
          ]
        ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Video Player"),),
          body: CustomVideoPlayer(
            customVideoPlayerController: _customVideoPlayerController,
          ),
        )
    );
  }
}




















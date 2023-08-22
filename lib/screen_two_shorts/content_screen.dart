import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_clone/screen_two_shorts/options_screen.dart';

class ContentScreen extends StatefulWidget {
  // const ContentScreen({super.key});
  final String src;

  const ContentScreen({super.key, required this.src});

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  // const ContentScreen({Key? key, required this.src}) : super(key: key);
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  Future initializePlayer() async {
    _videoPlayerController = VideoPlayerController.network(widget.src);
    await Future.wait([_videoPlayerController.initialize()]);
    _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
      autoPlay: true,
      showControls: false,
      looping: true,

    );
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        fit: StackFit.expand,

        children: [
          // Image.network(src, fit: BoxFit.cover,),
        _chewieController.videoPlayerController.value.isInitialized
        ? Chewie(controller: _chewieController,)
        : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(),
            SizedBox(height: 10),
            Text('Loading...')
          ],
        ),
      const OptionsScreen(),
     ],
    );
  }
}



import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../../core/utils/shimmer_card.dart';

class VideoBackgroundScreen extends StatefulWidget {
  const VideoBackgroundScreen({super.key,required this.deviceSize});
  final Size deviceSize;

  @override
  _VideoBackgroundScreenState createState() => _VideoBackgroundScreenState();
}

class _VideoBackgroundScreenState extends State<VideoBackgroundScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
   _controller = VideoPlayerController.networkUrl(Uri.parse('http://staging.indemandtickets.co.uk//frontend/web/backend/images/landing_video.mp4'),
   
   );

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
 
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: widget.deviceSize.width*0.8,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
    
        child: SizedBox(
           width: widget.deviceSize.width*0.8,
          height: widget.deviceSize.height*0.20,
          child: Visibility(
                visible: true,
                child: 
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                
          ),
        ),
      ),
    )
      ;
  }

  @override
  void dispose() {
   
    _controller.dispose();
     super.dispose();
  }
}
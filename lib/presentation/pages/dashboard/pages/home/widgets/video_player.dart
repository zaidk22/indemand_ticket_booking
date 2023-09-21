import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'dart:io';

class VideoBackgroundScreen extends StatefulWidget {
  const VideoBackgroundScreen({Key? key, required this.deviceSize}) : super(key: key);
  final Size deviceSize;

  @override
  _VideoBackgroundScreenState createState() => _VideoBackgroundScreenState();
}

class _VideoBackgroundScreenState extends State<VideoBackgroundScreen> {
  late Future<void> _initializeControllerFuture;
  late VideoPlayerController _controller;
  late String _localVideoPath;

  @override
  void initState() {
    super.initState();
    _initializeControllerFuture = _initializeVideoPlayer();
  }

  Future<void> _initializeVideoPlayer() async {
    final videoUrl = 'http://staging.indemandtickets.co.uk/frontend/web/backend/images/landing_video.webm';

    // Create a cache manager
    final cacheManager = DefaultCacheManager();

    // Try to get the local file from cache
    final file = await cacheManager.getFileFromCache(videoUrl);

    if (file == null) {
      // If the file is not in cache, download it
      final videoFile = await _downloadVideo(videoUrl);
      _localVideoPath = videoFile.path;
    } else {
      // If the file is in cache, use it
      _localVideoPath = file.file.path;
    }

    _controller = VideoPlayerController.file(File(_localVideoPath))
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.play();
      });

    _controller.addListener(() {
      setState(() {});
    });
  }

  Future<File> _downloadVideo(String videoUrl) async {
    final cacheManager = DefaultCacheManager();
    final file = await cacheManager.getSingleFile(videoUrl);

    return file;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            width: widget.deviceSize.width * 0.8,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: widget.deviceSize.width * 0.8,
                height: widget.deviceSize.height * 0.20,
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

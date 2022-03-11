import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/progress.dart';
import 'package:netfilx_clone/providers/is_in_view/is_in_view_pro.dart';
import 'package:netfilx_clone/providers/video_loader_pro/video_loader_pro.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class CusVideoPlayer extends StatefulWidget {
  const CusVideoPlayer({
    Key? key,
    required this.url,
    required this.id,
  }) : super(key: key);
  final String url;
  final String id;

  @override
  State<CusVideoPlayer> createState() => _CusVideoPlayerState();
}

class _CusVideoPlayerState extends State<CusVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    var media = widget.url;
    Future.delayed(Duration.zero).then((value) {
      debugPrint("video loaded state = true 🚀🚀🚀🚀🚀🚀");
      context.read<VideoLoaderProvider>().videoLoadTrue();
    });
    _controller = VideoPlayerController.network(
      media.isEmpty
          ? "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"
          : media,
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.

        setState(() {});
        debugPrint("video loaded state = false 🚀🚀🚀🚀🚀🚀");
        context.read<VideoLoaderProvider>().videoLoadFalse();
        _controller.setLooping(true);
        _controller.play();
      });
    _controller.addListener(() {
      debugPrint(_controller.value.isBuffering.toString() + "🦥🦥");
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller.value.isInitialized) {
      return Stack(
        fit: StackFit.expand,
        children: [
          FittedBox(
            fit: BoxFit.fill,
            child: SizedBox(
              width: _controller.value.size.width,
              height: _controller.value.size.height,
              child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller)),
            ),
          ),
          Consumer<IsInViewProvider>(
            builder: (context, value, child) => value.viewId == widget.id
                ? Align(
                    alignment: Alignment.center,
                    child: _controller.value.isBuffering
                        ? const Progress()
                        : const SizedBox(),
                  )
                : const SizedBox(),
          )
        ],
      );
    } else {
      return Container();
    }
  }
}

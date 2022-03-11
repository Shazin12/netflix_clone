// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/image_loader.dart';
import 'package:netfilx_clone/core/widgets/mute_button.dart';
import 'package:netfilx_clone/core/widgets/progress.dart';
import 'package:netfilx_clone/core/widgets/video_player/cus_video_player_loader.dart';
import 'package:netfilx_clone/main.dart';
import 'package:netfilx_clone/network/get_video_link/get_video_link.dart';
import 'package:netfilx_clone/providers/is_in_view/is_in_view_pro.dart';
import 'package:netfilx_clone/providers/load_video_link/load_video_link_pro.dart';
import 'package:netfilx_clone/providers/video_loader_pro/video_loader_pro.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HotAndNewVideoPlayer extends StatelessWidget {
  const HotAndNewVideoPlayer({
    Key? key,
    required this.textboxwidth,
    required this.textboxHeight,
    required this.url,
    required this.imgUrl,
    required this.id,
  }) : super(key: key);

  final double textboxwidth;
  final double textboxHeight;
  final String url;
  final String imgUrl;
  final String id;

  @override
  Widget build(BuildContext context) {
    var height = textboxHeight + 50;

    return SizedBox(
      width: textboxwidth,
      height: height,
      child: Stack(
        children: [
          Container(
            color: Colors.grey.withOpacity(0.2),
            width: textboxwidth,
            height: height,
            child: Consumer<IsInViewProvider>(
              builder: (context, value, child) {
                return value.viewId == id
                    ? CusVideoLoader(url: url, id: id)
                    : ImageLoader(img: imgUrl);
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: MuteButton(),
            ),
          ),
          Consumer<VideoLoaderProvider>(
            builder: (context, value, child) => value.videoLoading
                ? Consumer<IsInViewProvider>(
                    builder: (context, value, child) => value.viewId == id
                        ? const Progress()
                        : const SizedBox(),
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}

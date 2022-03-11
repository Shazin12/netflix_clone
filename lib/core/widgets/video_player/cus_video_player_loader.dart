import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/progress.dart';
import 'package:netfilx_clone/core/widgets/video_player/cus_video_player.dart';
import 'package:netfilx_clone/network/get_video_link/get_video_link.dart';
import 'package:netfilx_clone/providers/load_video_link/load_video_link_pro.dart';
import 'package:provider/provider.dart';

class CusVideoLoader extends StatefulWidget {
  const CusVideoLoader({
    Key? key,
    required this.url,
    required this.id,
  }) : super(key: key);
  final String url;
  final String id;

  @override
  State<CusVideoLoader> createState() => _CusVideoLoaderState();
}

class _CusVideoLoaderState extends State<CusVideoLoader> {
  @override
  void initState() {
    var pro = context.read<LoadVideoLinkPro>();
    Future.delayed(Duration.zero, () {
      if (mounted) {
        pro.clearAll();
      }
    });
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        pro.getVideoLink(widget.url);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    cancelMovieGetToken();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("video rebuilded");
    return Consumer<LoadVideoLinkPro>(
      builder: (context, value, child) {
        return value.isLoading
            ? const Progress()
            : CusVideoPlayer(
                url: value.url,
                id: widget.id,
              );
      },
    );
  }
}

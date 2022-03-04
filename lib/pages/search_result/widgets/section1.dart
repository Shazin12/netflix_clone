import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/progress.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';
import 'package:netfilx_clone/pages/search_result/widgets/section2.dart';
import 'package:netfilx_clone/providers/search_pro.dart';
import 'package:provider/provider.dart';

class SearchResChild extends StatefulWidget {
  const SearchResChild({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchResChild> createState() => _SearchResChildState();
}

class _SearchResChildState extends State<SearchResChild> {
  final ScrollController _controller = ScrollController();

  bool bottomLoading = false;
  bool currentLoadingCompletd = true;

  @override
  void initState() {
    _controller.addListener(() async {
      if (_controller.position.atEdge) {
        bool isTop = _controller.position.pixels == 0;
        if (isTop) {
        } else {
          if (currentLoadingCompletd) {
            setState(() {
              bottomLoading = true;
            });
          }

          if (currentLoadingCompletd) {
            currentLoadingCompletd = false;

            await context.read<SearchProvider>().getMoreSearchRes();

            currentLoadingCompletd = true;
          } else {}

          if (currentLoadingCompletd) {
            setState(() {
              bottomLoading = false;
            });
          }
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //   var searchPro = context.watch<SearchProvider>();
    var media = MediaQuery.of(context).size;
    double spacing = 8.0;
    return Expanded(
      child: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            Consumer<SearchProvider>(builder: (context, v, w) {
              return v.loading && bottomLoading == false
                  ? LimitedBox(
                      maxHeight: media.height / 2,
                      child: const Progress(),
                    )
                  : v.searchedResult.isEmpty
                      ? LimitedBox(
                          maxHeight: media.height / 2,
                          child: const Center(
                            child: Text("Result Not Found"),
                          ),
                        )
                      : GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          controller: ScrollController(),
                          itemCount: v.searchedResult.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: spacing,
                            mainAxisSpacing: spacing,
                            childAspectRatio: 1.3 / 1.9,
                          ),
                          itemBuilder: (_, i) => SearchResImgShow(
                              img: v.searchedResult[i].poster_path),
                        );
            }),
            bottomLoading
                ? Column(
                    children: [
                      sizedBoxH10,
                      sizedBoxH10,
                      const Progress(),
                      sizedBoxH10,
                      sizedBoxH10,
                    ],
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}

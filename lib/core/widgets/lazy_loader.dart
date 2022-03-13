import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/progress.dart';

/// A widget that wraps a [Widget] and will trigger [onEndOfPage] when it
/// reaches the bottom of the list
typedef EndOfPageListenerCallback = void Function();
enum LoadingStatus { loading, stable }

class CusLazyLoadScrollView extends StatefulWidget {
  /// The [Widget] that this widget watches for changes on
  final Widget child;

  /// Called when the [child] reaches the end of the list
  final EndOfPageListenerCallback onEndOfPage;

  /// The offset to take into account when triggering [onEndOfPage] in pixels
  final int scrollOffset;

  /// Used to determine if loading of new data has finished. You should use set this if you aren't using a FutureBuilder or StreamBuilder
  final bool isLoading;

  /// Prevented update nested listview with other axis direction
  final Axis scrollDirection;

  @override
  State<StatefulWidget> createState() => CusLazyLoadScrollViewState();

  const CusLazyLoadScrollView({
    Key? key,
    required this.child,
    required this.onEndOfPage,
    this.scrollDirection = Axis.vertical,
    this.isLoading = false,
    this.scrollOffset = 100,
  }) : super(key: key);
}

class CusLazyLoadScrollViewState extends State<CusLazyLoadScrollView> {
  LoadingStatus loadMoreStatus = LoadingStatus.stable;
  bool isInBottom = false;

  @override
  void didUpdateWidget(CusLazyLoadScrollView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.isLoading) {
      loadMoreStatus = LoadingStatus.stable;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: NotificationListener<ScrollNotification>(
            child: widget.child,
            onNotification: (notification) =>
                _onNotification(notification, context),
          ),
        ),
        isInBottom
            ? SizedBox(
                width: double.infinity,
                child: widget.isLoading
                    ? const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Progress(),
                      )
                    : const SizedBox(),
              )
            : const SizedBox()
      ],
    );
  }

  bool _onNotification(ScrollNotification notification, BuildContext context) {
    if (widget.scrollDirection == notification.metrics.axis) {
      //   print(notification.metrics.maxScrollExtent);
      if (notification.metrics.pixels >
          notification.metrics.maxScrollExtent - 10) {
        Future.delayed(
            Duration.zero,
            () => setState(() {
                  isInBottom = true;
                }));
      } else {
        Future.delayed(
            Duration.zero,
            () => setState(() {
                  isInBottom = false;
                }));
      }
      if (notification is ScrollUpdateNotification) {
        if (notification.metrics.maxScrollExtent >
                notification.metrics.pixels &&
            notification.metrics.maxScrollExtent -
                    notification.metrics.pixels <=
                widget.scrollOffset) {
          _loadMore();
        }
        return true;
      }

      if (notification is OverscrollNotification) {
        if (notification.overscroll > 0) {
          _loadMore();
        }
        return true;
      }
    }
    return false;
  }

  void _loadMore() {
    if (loadMoreStatus == LoadingStatus.stable) {
      loadMoreStatus = LoadingStatus.loading;
      widget.onEndOfPage();
    }
  }
}

import 'package:flutter/material.dart';

/// A wrapper around ListView with a controller (CustomListViewController)
/// which features method animateToItem(int index) that scrolls the ListView
/// to the item through its index
class CustomListView extends StatefulWidget {
  const CustomListView(
      {Key? key,
      required this.controller,
      required this.children,
      this.scrollAnimationDuration,
      this.padding})
      : super(key: key);

  final CustomListViewController controller;
  final List<Widget> children;
  final Duration? scrollAnimationDuration;
  final EdgeInsets? padding;

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  late final ScrollController _scrollController;

  final _itemHeights = <double>[];

  int _tempItemHeightsLength = 0;

  Future<void> _initialize(int index, double? extraPixels) async {
    assert(index >= 0 && index < widget.children.length,
        'Index of item to animate to is out of list\'s range');
    if (_itemHeights.isNotEmpty) {
      await _animateToItem(index, extraPixels);
    } else {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
        if (_itemHeights.isNotEmpty) {
          _animateToItem(index, extraPixels);
        }
      });
    }
  }

  Future<void> _animateToItem(int index, double? extraPixels) async {
    final itemHeightsLength = _itemHeights.length;
    if (_scrollController.hasClients) {
      if (index <= itemHeightsLength) {
        await _scrollController.animateTo(
            _getOffset(index) - (extraPixels ??= 0),
            duration: widget.scrollAnimationDuration ??
                const Duration(milliseconds: 160),
            curve: Curves.linear);
      } else if (_tempItemHeightsLength < itemHeightsLength &&
          itemHeightsLength > 0) {
        _tempItemHeightsLength = itemHeightsLength;
        await _scrollController.animateTo(_getOffset(itemHeightsLength - 1),
            duration: widget.scrollAnimationDuration ??
                const Duration(milliseconds: 160),
            curve: Curves.linear);
        await _animateToItem(index, extraPixels);
      }
    }
  }

  void _setItemHeights(int index, double height) {
    if (index >= _itemHeights.length) {
      _itemHeights.add(height);
    }
  }

  double _getOffset(int index) {
    double offset = 0;
    for (int i = 0; i < index; i++) {
      if (i < _itemHeights.length) {
        offset = offset + _itemHeights[i];
      }
    }
    return offset + (widget.padding?.top ?? 0);
  }

  @override
  void initState() {
    _scrollController = widget.controller.scrollController;
    widget.controller._state = this;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
      padding: widget.padding,
      children: widget.children.map((e) {
        final index = widget.children.indexOf(e);
        return _ListItem(
            index: index,
            child: e,
            onItemBuilt: (height) => _setItemHeights(index, height));
      }).toList(),
    );
  }
}

/// Wrapper around the items of ListView.
/// The CallBack onItemBuilt exposes the height of the item to the CutomListView,
/// so that the offset of the scroll position can be calculated later on.
class _ListItem extends StatelessWidget {
  const _ListItem(
      {Key? key,
      required this.onItemBuilt,
      required this.index,
      required this.child})
      : super(key: key);

  final int index;
  final Widget child;
  final void Function(double) onItemBuilt;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (context.mounted && context.size != null) {
        onItemBuilt(context.size!.height);
      }
    });
    return child;
  }
}

/// Controller of CustomListView.
/// It includes a ScrollController that is attached to the ListView and
/// can be used at will (e.g. to add a ScrollBar)
/// and the method animateToItem to scroll the ListView to a specific item.
class CustomListViewController {
  _CustomListViewState? _state;

  /// ScrollController that is attached to ListView
  final scrollController = ScrollController();

  /// Method to scroll ListView to specific item given the item's index.
  /// The item appears first in ListView's Viewport.
  /// With extraPixels, pixels can be added/subtracted in order to position the
  /// item lower or higher in Viewport.
  /// If ListView is built before calling this method, the Future of this
  /// method is returned when ListView completes the scrolling to specific item.
  /// Otherwise this method is scheduled for next Frame,
  /// therefore the Future is returned earlier and it is not bound to the
  /// completion of the scrolling
  Future<void> animateToItem(int index, {double? extraPixels}) async {
    if (_state != null) {
      await _state!._initialize(index, extraPixels);
    } else {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
        _state?._initialize(index, extraPixels);
      });
    }
  }
}

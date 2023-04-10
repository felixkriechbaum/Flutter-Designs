import 'package:course_app/ui/app.colors.dart';
import 'package:flutter/material.dart';

class BottomElement extends StatefulWidget {
  final IconData selected;
  final IconData unselected;
  final int yourIndex;
  final int selectedIndex;
  final int? badgeCount;
  final ValueChanged<int> onSelected;
  const BottomElement(
      this.selected, this.unselected, this.yourIndex, this.selectedIndex,
      {required this.onSelected, this.badgeCount, super.key});

  @override
  State<BottomElement> createState() => _BottomElementState();
}

class _BottomElementState extends State<BottomElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(xlarge),
        color: widget.selectedIndex == widget.yourIndex ? Colors.blue : null,
      ),
      child: IconButton(
        onPressed: () {
          widget.onSelected(widget.yourIndex);
        },
        splashRadius: large - 6,
        icon: Badge(
          isLabelVisible: widget.badgeCount != null,
          label: Text(
            widget.badgeCount == null ? "" : widget.badgeCount.toString(),
            style: const TextStyle(fontSize: 12),
          ),
          child: Icon(
            widget.selectedIndex == widget.yourIndex
                ? widget.selected
                : widget.unselected,
            color:
                widget.selectedIndex == widget.yourIndex ? Colors.white : null,
            size: large,
          ),
        ),
      ),
    );
  }
}

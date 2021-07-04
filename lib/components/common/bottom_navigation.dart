import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class BottomNavigation extends StatelessWidget {
  late final List<Icon> icons;
  late final int selectedIndex;
  late final onTabPress;

  BottomNavigation(
      {Key? key,
      required this.icons,
      required this.selectedIndex,
      required this.onTabPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: double.infinity,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade100,
                      blurRadius: 10,
                      spreadRadius: 5),
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26))),
            child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40, bottom: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: icons
                        .map(
                          (icon) => IconButton(
                            color: icons.indexOf(icon) == selectedIndex
                                ? Colors.purple
                                : Colors.purple.shade100,
                            icon: icon,
                            iconSize: 34,
                            onPressed: () {
                              HapticFeedback.selectionClick();
                              this.onTabPress(icons.indexOf(icon));
                            },
                          ),
                        )
                        .toList()))));
  }
}

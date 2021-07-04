import "package:flutter/material.dart";

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

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
                      color: Colors.grey.shade200,
                      blurRadius: 14,
                      spreadRadius: 5),
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26))),
            child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40, bottom: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.home_outlined,
                        size: 34,
                        color: Colors.purple,
                      ),
                      Icon(
                        Icons.park_outlined,
                        size: 34,
                        color: Colors.purple.shade100,
                      ),
                      Icon(
                        Icons.map_outlined,
                        size: 34,
                        color: Colors.purple.shade100,
                      ),
                      Icon(
                        Icons.hearing_outlined,
                        size: 34,
                        color: Colors.purple.shade100,
                      ),
                      Icon(
                        Icons.person_outlined,
                        size: 34,
                        color: Colors.purple.shade100,
                      ),
                    ]))));
  }
}

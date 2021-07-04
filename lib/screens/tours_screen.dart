import "package:flutter/material.dart";
import "package:demal/components/common/tour_tile.dart";

class ToursScreen extends StatefulWidget {
  const ToursScreen({Key? key}) : super(key: key);

  @override
  _ToursScreenState createState() => _ToursScreenState();
}

class _ToursScreenState extends State<ToursScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                "Ближайшие туры",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 26, left: 24, right: 24),
              child: SizedBox(
                height: 120,
                child: TourTile(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
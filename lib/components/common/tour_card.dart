import 'package:flutter/material.dart';

class TourCard extends StatelessWidget {
  const TourCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      width: 180,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/tour-1.jpg"), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  Text(
                    "24",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
              Icon(Icons.favorite_border, color: Colors.white)
            ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Озеро Кольсай",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Text("2-х дневный тур",
                    style: TextStyle(color: Colors.white, fontSize: 12))
              ],
            )
          ],
        ),
      ),
    );
  }
}

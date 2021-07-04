import "package:flutter/material.dart";

class TourTile extends StatelessWidget {
  const TourTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/tour-3.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(top: 6, bottom: 6, left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Каинды",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            Icon(Icons.favorite_border,
                                color: Colors.purple.shade500, size: 22)
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 6),
                            child: Text(
                                "Поход на знаменитое алматинское озеро с прекрасными видами",
                                style: TextStyle(fontSize: 12)))
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.purple,
                                size: 18,
                              ),
                              Text(
                                "11",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.purple,
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 4),
                              child: Icon(
                                Icons.calendar_today_outlined,
                                color: Colors.purple,
                                size: 18,
                              ),
                            ),
                            Text("29 июня 2021",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.purple,
                                ))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

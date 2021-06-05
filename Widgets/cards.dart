import 'package:flutter/material.dart';

class TravelCard extends StatelessWidget {
  final String place;
  final String imageUrl;
  final double rataing;
  final String description;
  final String bestTime;
  final Function() onTap;
  const TravelCard({
    Key? key,
    required this.place,
    required this.imageUrl,
    required this.rataing,
    required this.description,
    required this.bestTime,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(place), Text(rataing.toString())],
            ),
            Image(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
            Text(description),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              color: Colors.orange,
              child: Text('Read More'),
            )
          ],
        ),
      ),
    );
  }
}

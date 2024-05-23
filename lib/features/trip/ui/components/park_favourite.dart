import 'package:flutter/material.dart';

import '../screens/park_details.dart';
import 'star_rating.dart';

class ParkFavourite extends StatefulWidget {
  final String name;
  final double rating;
  final String imageUrl;

  const ParkFavourite({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.rating,
  });

  @override
  ParkFavouriteState createState() => ParkFavouriteState();
}

class ParkFavouriteState extends State<ParkFavourite> {
  bool isFavourite = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          ParkDetails.routeName,
          arguments: {
            'imageUrl': widget.imageUrl,
            'name': widget.name,
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF3E4053),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  SizedBox(
                    width: 150.0,
                    height: 100.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        widget.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          widget.name,
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        StarRating(rating: widget.rating),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isFavourite = !isFavourite;
                  });
                },
                child: Icon(
                  isFavourite
                      ? Icons.favorite_rounded
                      : Icons.favorite_border_rounded,
                  color: isFavourite
                      ? Theme.of(context).colorScheme.secondary
                      : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

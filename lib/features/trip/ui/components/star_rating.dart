import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final int starCount;
  final Color color;

  const StarRating({
    super.key,
    required this.rating,
    this.starCount = 5,
    this.color = Colors.orangeAccent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(starCount, (index) {
        if (index < rating.floor()) {
          return Icon(
            Icons.star_rounded,
            color: color,
          );
        } else if (index < rating && rating - index > 0) {
          return Icon(
            Icons.star_half_rounded,
            color: color,
          );
        } else {
          return Icon(
            Icons.star_border_rounded,
            color: color,
          );
        }
      }),
    );
  }
}

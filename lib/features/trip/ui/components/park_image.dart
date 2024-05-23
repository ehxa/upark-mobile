import 'package:flutter/material.dart';

class ParkImage extends StatefulWidget {
  final String imageUrl;

  const ParkImage({super.key, required this.imageUrl});

  @override
  ParkImageState createState() => ParkImageState();
}

class ParkImageState extends State<ParkImage> {
  bool _isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          widget.imageUrl,
          width: double.infinity,
          height: 250,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 40,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: IconButton(
              icon: Icon(
                _isFavorite ? Icons.star_rounded : Icons.star_border_rounded,
                color: _isFavorite ? Colors.orangeAccent : Colors.white,
              ),
              onPressed: _toggleFavorite,
            ),
          ),
        ),
      ],
    );
  }
}

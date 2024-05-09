import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String label;
  final String dstRoute;
  final Color backgroundColor;
  final Color foregroundColor;

  const RoundButton({
    super.key,
    required this.label,
    required this.dstRoute,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, dstRoute);
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 15.0,
            color: foregroundColor,
          ),
        ),
      ),
    );
  }
}

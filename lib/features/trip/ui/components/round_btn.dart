import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String label;
  final String dstRoute;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback? onPressed;

  const RoundButton({
    super.key,
    required this.label,
    required this.dstRoute,
    required this.backgroundColor,
    required this.foregroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: onPressed ??
            () {
              Navigator.pushNamed(context, dstRoute);
            },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        ),
        child: Text(
          label.toUpperCase(),
          style: TextStyle(
            fontSize: 15.0,
            color: foregroundColor,
          ),
        ),
      ),
    );
  }
}

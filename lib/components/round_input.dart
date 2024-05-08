import 'package:flutter/material.dart';
import 'package:smart_park/utils/hex_color.dart';

class RoundInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const RoundInput({
    super.key,
    required this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              cursorColor: Colors.black,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hintText: label,
                hintStyle: TextStyle(color: HexColor("#858585")),
                filled: true,
                fillColor: HexColor("#D4D5DF"),
                prefixIcon: Icon(
                  Icons.person_rounded,
                  color: HexColor("#858585"),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RoundInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final IconData icon;

  const RoundInput({
    super.key,
    required this.label,
    required this.controller,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 55.0,
              child: TextField(
                controller: controller,
                cursorColor: Colors.black,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: label,
                  hintStyle: const TextStyle(color: Color(0xFF858585)),
                  filled: true,
                  fillColor: const Color(0xFFD4D5DF),
                  prefixIcon: Icon(
                    icon,
                    color: const Color(0xFF858585),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

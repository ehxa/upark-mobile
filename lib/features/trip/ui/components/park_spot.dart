import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum ParkSpotState { available, selected, taken }

class ParkSpot extends StatelessWidget {
  final ParkSpotState state;
  final int index;
  final VoidCallback onTap;
  final bool isSelected;

  const ParkSpot(
      {super.key,
      required this.state,
      required this.index,
      required this.onTap,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    if (state == ParkSpotState.taken) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white70,
            width: 1,
          ),
          shape: BoxShape.rectangle,
        ),
        child: SvgPicture.asset(
          'lib/assets/images/car.svg',
          height: 100,
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.49),
        ),
      );
    } else {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white70,
              width: 1,
            ),
            shape: BoxShape.rectangle,
          ),
          height: 100,
          width: 100,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xFFF8A934)
                    : const Color(0xFF6160AB),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(16),
              child: Text(
                isSelected ? 'S' : 'A',
                style: TextStyle(
                  color: isSelected ? Colors.black : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
}

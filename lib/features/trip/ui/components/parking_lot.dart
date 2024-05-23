import 'package:flutter/material.dart';

import 'bottom_sheet.dart';
import 'park_spot.dart';

class ParkingLot extends StatefulWidget {
  const ParkingLot({super.key});

  @override
  ParkingLotState createState() => ParkingLotState();
}

class ParkingLotState extends State<ParkingLot> {
  int? _selectedSpotIndex;

  void _selectSpot(int index) {
    setState(() {
      if (_selectedSpotIndex == index) {
        _selectedSpotIndex = null;
      } else {
        _selectedSpotIndex = index;
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return const SpotBottomSheet();
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(color: Color(0xFF3F4053)),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.arrow_forward_rounded),
                  Icon(Icons.arrow_forward_rounded),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.arrow_upward_rounded),
                  ParkSpot(
                    state: ParkSpotState.taken,
                    index: 0,
                    onTap: () => _selectSpot(0),
                    isSelected: _selectedSpotIndex == 0,
                  ),
                  const Icon(Icons.arrow_downward_rounded),
                  ParkSpot(
                    state: ParkSpotState.available,
                    index: 1,
                    onTap: () => _selectSpot(1),
                    isSelected: _selectedSpotIndex == 1,
                  ),
                  const Icon(Icons.arrow_downward_rounded),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.arrow_back_rounded),
                  Icon(Icons.arrow_back_rounded),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.arrow_forward_rounded),
                  Icon(Icons.arrow_forward_rounded),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.arrow_upward_rounded),
                  ParkSpot(
                    state: ParkSpotState.available,
                    index: 2,
                    onTap: () => _selectSpot(2),
                    isSelected: _selectedSpotIndex == 2,
                  ),
                  const Icon(Icons.arrow_downward_rounded),
                  ParkSpot(
                    state: ParkSpotState.selected,
                    index: 3,
                    onTap: () => _selectSpot(3),
                    isSelected: _selectedSpotIndex == 3,
                  ),
                  const Icon(Icons.arrow_downward_rounded),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.arrow_back_rounded),
                  Icon(Icons.arrow_back_rounded),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(color: Color(0xFF3F4053)),
              child: const Row(
                children: [
                  Icon(Icons.arrow_upward_rounded),
                  Icon(Icons.arrow_downward_rounded),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

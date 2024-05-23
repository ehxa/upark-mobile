import 'package:flutter/material.dart';

class FloorSelector extends StatefulWidget {
  final List<int> floorLabels;

  const FloorSelector({super.key, required this.floorLabels});

  @override
  FloorSelectorState createState() => FloorSelectorState();
}

class FloorSelectorState extends State<FloorSelector> {
  int? _selectedFloor;

  @override
  void initState() {
    super.initState();
    if (widget.floorLabels.isNotEmpty) {
      _selectedFloor = widget.floorLabels[0];
    }
  }

  void _selectFloor(int floor) {
    setState(() {
      _selectedFloor = floor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: widget.floorLabels.map((floor) {
        return _buildFloorButton(context, floor);
      }).toList(),
    );
  }

  Widget _buildFloorButton(BuildContext context, int floor) {
    return GestureDetector(
      onTap: () => _selectFloor(floor),
      child: Text(
        'Floor $floor',
        style: TextStyle(
          color: _selectedFloor == floor
              ? Theme.of(context).colorScheme.secondary
              : Colors.white,
          fontWeight:
              _selectedFloor == floor ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

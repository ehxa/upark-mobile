import 'package:flutter/material.dart';

import 'vehicle_card.dart';

class VehicleSelectionRow extends StatefulWidget {
  const VehicleSelectionRow({super.key});

  @override
  _VehicleSelectionRowState createState() => _VehicleSelectionRowState();
}

class _VehicleSelectionRowState extends State<VehicleSelectionRow> {
  int selectedVehicle = 0;

  void selectVehicle(int newVehicle) {
    setState(() {
      if (selectedVehicle != newVehicle) {
        selectedVehicle = newVehicle;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        VehicleCard(
          icon: Icons.directions_car,
          type: "Car",
          isSelected: selectedVehicle == 0,
          onTap: () => selectVehicle(0),
        ),
        VehicleCard(
          icon: Icons.directions_bike_outlined,
          type: "Bike",
          isSelected: selectedVehicle == 1,
          onTap: () => selectVehicle(1),
        ),
        VehicleCard(
          icon: Icons.electric_car,
          type: "Electric",
          isSelected: selectedVehicle == 2,
          onTap: () => selectVehicle(2),
        ),
      ],
    );
  }
}

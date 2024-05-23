import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditableTimeWidget extends StatefulWidget {
  const EditableTimeWidget({super.key});

  @override
  EditableTimeWidgetState createState() => EditableTimeWidgetState();
}

class EditableTimeWidgetState extends State<EditableTimeWidget> {
  TimeOfDay selectedTime = TimeOfDay.now();

  String formatTimeOfDay(TimeOfDay time) {
    final now = DateTime.now();
    DateTime minBookingRange = now.add(const Duration(minutes: 5));
    String minBookingTime = DateFormat.Hm().format(minBookingRange);
    return minBookingTime;
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectTime(context),
      child: Text(
        formatTimeOfDay(selectedTime),
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

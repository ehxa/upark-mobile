import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../screens/booking.dart';
import '../screens/ticket_details.dart';
import 'edit_time.dart';

class SpotBottomSheet extends StatelessWidget {
  const SpotBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedTime = DateFormat.Hm().format(now);

    return Container(
      color: Colors.white70,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            'BOOK YOUR PARKING SPOT',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Zone',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Text(
                'A-01',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Time Slot',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$formattedTime - ',
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const EditableTimeWidget(),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Price',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Text(
                '4,45€',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, TicketDetails.routeName,
                  arguments: Booking.routeName);
            },
            child: const Text(
              'CONFIRM BOOKING',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TicketDetails extends StatelessWidget {
  static String routeName = '/ticketdetails';

  const TicketDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Ticket Details Screen',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}

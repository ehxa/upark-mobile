import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/round_btn.dart';
import '../components/screen_title.dart';
import '../components/subtitle.dart';
import '../components/ticket_card.dart';
import 'tickets.dart';

class TicketDetails extends StatelessWidget {
  static String routeName = '/ticketdetails';

  const TicketDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ScreenTitle(title: 'Parking\nTicket\nDetails'),
            const SizedBox(height: 20),
            TicketCard(
              color: Theme.of(context).colorScheme.secondary,
              park: 'Zone 1 - Funchal',
              brand: 'Renault Megane',
              plate: 'GT 94 ER',
            ),
            const SizedBox(height: 20),
            const Subtitle(
              subtitle: 'Time and Date',
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: SvgPicture.asset(
                    'lib/assets/icons/dotted_line.svg',
                    width: 24,
                    height: 48,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('15:06'),
                        SizedBox(width: 20),
                        Text(
                          '03/06/2024',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text('15:41'),
                        SizedBox(width: 20),
                        Text(
                          '03/06/2024',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(thickness: 0.2),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'lib/assets/icons/mastercard.svg',
                  width: 75,
                  height: 75,
                ),
                const SizedBox(width: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '3056****5904',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text('João Fernandes. 07/24'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white70),
                    ),
                    SizedBox(height: 5),
                    Text('4,45 €'),
                  ],
                ),
                RoundButton(
                  label: 'Pay',
                  dstRoute: Tickets.routeName,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  foregroundColor: Theme.of(context).colorScheme.onSecondary,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

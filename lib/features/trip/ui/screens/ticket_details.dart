import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/bottom_nav_bar.dart';
import '../components/round_btn.dart';
import '../components/screen_title.dart';
import '../components/subtitle.dart';
import '../components/ticket_card.dart';
import 'booking.dart';
import 'favourites.dart';
import 'home.dart';
import 'profile.dart';
import 'tickets.dart';

class TicketDetails extends StatelessWidget {
  static String routeName = '/ticketdetails';

  const TicketDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final previousRouteName =
        ModalRoute.of(context)?.settings.arguments as String?;
    final bool showPaymentButton = previousRouteName == Booking.routeName;
    final TextEditingController cardController =
        TextEditingController(text: '3056****5904');
    final TextEditingController cardDateController =
        TextEditingController(text: '07/24');

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Padding(
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   '3056****5904',
                        //   style: TextStyle(fontWeight: FontWeight.bold),
                        // ),
                        const Text('João Fernandes'),
                        SizedBox(
                          width: 150,
                          height: 30,
                          child: TextField(
                            cursorColor: Colors.white,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            controller: cardController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 20,
                          child: TextField(
                            cursorColor: Colors.white,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            controller: cardDateController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: showPaymentButton
                      ? MainAxisAlignment.spaceEvenly
                      : MainAxisAlignment.center,
                  children: [
                    const Column(
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70),
                        ),
                        SizedBox(height: 5),
                        Text('4,45 €'),
                      ],
                    ),
                    Visibility(
                      visible: showPaymentButton,
                      child: RoundButton(
                        label: 'Pay',
                        dstRoute: Tickets.routeName,
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                        foregroundColor:
                            Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: !showPaymentButton
            ? BottomNavBar(
                currentIndex: -1,
                onTap: (index) {
                  if (index == 0) {
                    Navigator.pushNamed(context, Home.routeName);
                  } else if (index == 1) {
                    Navigator.pushNamed(context, Favourites.routeName);
                  } else if (index == 2) {
                    Navigator.pushNamed(context, Tickets.routeName);
                  } else if (index == 3) {
                    Navigator.pushNamed(context, Profile.routeName);
                  }
                },
              )
            : null,
      ),
    );
  }
}

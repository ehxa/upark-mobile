import 'package:flutter/material.dart';
import 'package:smart_park/features/trip/ui/components/screen_title.dart';

import '../components/bottom_nav_bar.dart';
import '../components/ticket_card.dart';
import 'favourites.dart';
import 'home.dart';
import 'profile.dart';

class Tickets extends StatelessWidget {
  static String routeName = '/tickets';

  const Tickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenTitle(title: 'Parking\nTickets'),
              const SizedBox(height: 20),
              TicketCard(
                color: Theme.of(context).colorScheme.secondary,
                park: 'Zone 1 - Funchal',
                brand: 'Renault Megane',
                plate: 'GT 94 ER',
              ),
              const SizedBox(height: 10),
              const TicketCard(
                color: Color(0xFF6160AB),
                park: 'Zone 5 - Funchal',
                brand: 'Renault Megane',
                plate: 'GT 94 ER',
              ),
              const SizedBox(height: 10),
              const TicketCard(
                color: Color(0xFFF8A934),
                park: 'Zone 7 - Funchal',
                brand: 'Renault Megane',
                plate: 'GT 94 ER',
              ),
              const SizedBox(height: 10),
              const TicketCard(
                color: Color(0xFFF8A934),
                park: 'Zone 7 - Funchal',
                brand: 'Renault Megane',
                plate: 'GT 94 ER',
              ),
              const SizedBox(height: 10),
              const TicketCard(
                color: Color(0xFFF8A934),
                park: 'Zone 7 - Funchal',
                brand: 'Renault Megane',
                plate: 'GT 94 ER',
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, Home.routeName);
          } else if (index == 1) {
            Navigator.pushNamed(context, Favourites.routeName);
          } else if (index == 3) {
            Navigator.pushNamed(context, Profile.routeName);
          }
        },
      ),
    );
  }
}

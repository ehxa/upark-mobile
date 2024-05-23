import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import '../components/park_favourite.dart';
import '../components/screen_title.dart';
import 'home.dart';
import 'profile.dart';
import 'tickets.dart';

class Favourites extends StatelessWidget {
  static String routeName = '/favourites';

  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Padding(
        padding: EdgeInsets.fromLTRB(15, 50, 15, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScreenTitle(title: 'Favourites'),
              SizedBox(height: 20),
              ParkFavourite(
                imageUrl: 'lib/assets/images/tecnoparque.jpg',
                name: 'Tecnoparque',
                rating: 0,
              ),
              SizedBox(height: 15),
              ParkFavourite(
                imageUrl: 'lib/assets/images/5_de_outubro.png',
                name: '5 de Outubro',
                rating: 0.5,
              ),
              SizedBox(height: 15),
              ParkFavourite(
                imageUrl: 'lib/assets/images/espaço_insular.jpg',
                name: 'Espaço Insular',
                rating: 1.5,
              ),
              SizedBox(height: 15),
              ParkFavourite(
                imageUrl: 'lib/assets/images/praca_cr7.jpg',
                name: 'Praça CR7',
                rating: 5,
              ),
              SizedBox(height: 15),
              ParkFavourite(
                imageUrl: 'lib/assets/images/almirante_reis.jpg',
                name: 'Almirante Reis',
                rating: 1,
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, Home.routeName);
          } else if (index == 2) {
            Navigator.pushNamed(context, Tickets.routeName);
          } else if (index == 3) {
            Navigator.pushNamed(context, Profile.routeName);
          }
        },
      ),
    );
  }
}

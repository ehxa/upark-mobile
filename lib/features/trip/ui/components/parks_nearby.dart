import 'package:flutter/material.dart';

import 'park_card.dart';
import 'subtitle.dart';

class ParksNearby extends StatelessWidget {
  const ParksNearby({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        height: 150.0,
        child: const Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Subtitle(
                subtitle: 'Parks Nearby',
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ParkCard(
                      imageUrl: 'lib/assets/images/tecnoparque.jpg',
                      name: 'Tecnoparque',
                    ),
                    SizedBox(width: 10),
                    ParkCard(
                      imageUrl: 'lib/assets/images/5_de_outubro.png',
                      name: '5 de Outubro',
                    ),
                    SizedBox(width: 10),
                    ParkCard(
                      imageUrl: 'lib/assets/images/espaço_insular.jpg',
                      name: 'Espaço Insular',
                    ),
                    SizedBox(width: 10),
                    ParkCard(
                      imageUrl: 'lib/assets/images/praca_cr7.jpg',
                      name: 'Praça CR7',
                    ),
                    SizedBox(width: 10),
                    ParkCard(
                      imageUrl: 'lib/assets/images/santa_luzia.jpg',
                      name: 'Santa Luzia',
                    ),
                    SizedBox(width: 10),
                    ParkCard(
                      imageUrl: 'lib/assets/images/almirante_reis.jpg',
                      name: 'Almirante Reis',
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

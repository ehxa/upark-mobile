import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../components/bottom_nav_bar.dart';
import 'favourites.dart';
import 'profile.dart';
import 'tickets.dart';

class Home extends StatefulWidget {
  static String routeName = '/home';

  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();
  String _searchText = "";

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchText = _searchController.text;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(32.6591122,-16.9272408),
              zoom: 17,
            ),
            myLocationEnabled: true,
            zoomControlsEnabled: false,
            mapType: MapType.normal,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: const Offset(0, 2), // Offset
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _searchController,
                    style: TextStyle(color: Colors.black.withOpacity(0.75)),
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Look for a park...",
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.5)),
                      prefixIcon: Icon(Icons.search_outlined,
                          color: Colors.black.withOpacity(0.5)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.5), width: 1.0),
                      ),
                    ),
                  ),
                ),
                // Row(
                //   children: [
                //     Expanded(
                //       flex: 1,
                //       child: RoundButton(
                //         label: 'Skip',
                //         dstRoute: routeName,
                //         foregroundColor: Theme.of(context).colorScheme.onSurface,
                //         backgroundColor: Theme.of(context).colorScheme.surface,
                //       ),
                //     ),
                //     Expanded(
                //       flex: 2,
                //       child: RoundButton(
                //         label: 'Next',
                //         dstRoute: routeName,
                //         foregroundColor: Theme.of(context).colorScheme.onSecondary,
                //         backgroundColor: Theme.of(context).colorScheme.secondary,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, Favourites.routeName);
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

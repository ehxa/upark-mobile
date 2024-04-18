import 'package:flutter/material.dart';

import 'screens/booking.dart';
import 'screens/favourites.dart';
import 'screens/home.dart';
import 'screens/notifications.dart';
import 'screens/map.dart';
import 'utils/hex_color.dart';
import 'utils/no_page_transition.dart';

void main() {
  runApp(const UPark());
}

class UPark extends StatelessWidget {
  const UPark({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme customColorScheme = ColorScheme(
      primary: HexColor("#FFFFFF"),
      onPrimary: HexColor("#707B81"),
      secondary: HexColor("#48B2E7"),
      onSecondary: HexColor("#FFFFFF"),
      error: Colors.red,
      onError: Colors.white,
      background: Colors.grey[200]!,
      onBackground: Colors.black,
      surface: Colors.white,
      onSurface: Colors.black,
      brightness: Brightness.light,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UPark',
      theme: ThemeData(
        colorScheme: customColorScheme,
        useMaterial3: true,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: NoPageTransition(),
            TargetPlatform.iOS: NoPageTransition(),
          },
        ),
      ),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => const Home(),
        Favourites.routeName: (context) => const Favourites(),
        Notifications.routeName: (context) => const Notifications(),
        Map.routeName: (context) => const Map(),
        Booking.routeName: (context) => const Booking(),
      },
    );
  }
}

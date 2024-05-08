import 'package:flutter/material.dart';

import 'screens/booking.dart';
import 'screens/change_password.dart';
import 'screens/park_details.dart';
import 'screens/parking.dart';
import 'screens/home.dart';
import 'screens/profile_settings.dart';
import 'screens/ticket_details.dart';
import 'screens/profile.dart';
import 'screens/sign_in.dart';
import 'screens/sign_up.dart';
import 'screens/tickets.dart';
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
      primary: HexColor("#000000"),
      onPrimary: HexColor("#1C1D28"),
      secondary: HexColor("#B23537"),
      onSecondary: HexColor("#FFFFFF"),
      error: Colors.red,
      onError: Colors.white,
      background: Colors.grey[200]!,
      onBackground: Colors.black,
      surface: Colors.black,
      onSurface: Colors.white,
      brightness: Brightness.dark,
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
      initialRoute: SignIn.routeName,
      routes: {
        SignIn.routeName: (context) => const SignIn(),
        SignUp.routeName: (context) => const SignUp(),
        Home.routeName: (context) => const Home(),
        Parking.routeName: (context) => const Parking(),
        ParkDetails.routeName: (context) => const ParkDetails(),
        Booking.routeName: (context) => const Booking(),
        Tickets.routeName: (context) => const Tickets(),
        TicketDetails.routeName: (context) => const TicketDetails(),
        Profile.routeName: (context) => const Profile(),
        ProfileSettings.routeName: (context) => const ProfileSettings(),
        ChangePassword.routeName: (context) => const ChangePassword(),
      },
    );
  }
}

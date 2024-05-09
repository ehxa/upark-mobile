import 'package:flutter/material.dart';

import 'common/utils/hex_color.dart';
import 'common/utils/no_page_transition.dart';
import 'features/trip/ui/screens/booking.dart';
import 'features/trip/ui/screens/change_password.dart';
import 'features/trip/ui/screens/home.dart';
import 'features/trip/ui/screens/park_details.dart';
import 'features/trip/ui/screens/parking.dart';
import 'features/trip/ui/screens/profile.dart';
import 'features/trip/ui/screens/profile_settings.dart';
import 'features/trip/ui/screens/sign_in.dart';
import 'features/trip/ui/screens/sign_up.dart';
import 'features/trip/ui/screens/ticket_details.dart';
import 'features/trip/ui/screens/tickets.dart';

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

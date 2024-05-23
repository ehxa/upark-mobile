import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'common/utils/no_page_transition.dart';
import 'features/trip/data/db_repository.dart';
import 'features/trip/ui/screens/booking.dart';
import 'features/trip/ui/screens/change_password.dart';
import 'features/trip/ui/screens/favourites.dart';
import 'features/trip/ui/screens/home.dart';
import 'features/trip/ui/screens/map.dart';
import 'features/trip/ui/screens/park_details.dart';
import 'features/trip/ui/screens/profile.dart';
import 'features/trip/ui/screens/profile_settings.dart';
import 'features/trip/ui/screens/sign_in.dart';
import 'features/trip/ui/screens/sign_up.dart';
import 'features/trip/ui/screens/ticket_details.dart';
import 'features/trip/ui/screens/tickets.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black,
    statusBarIconBrightness: Brightness.light,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const UPark());
  // final dbRepository = DBRepository();
  // dbRepository.configureAmplify().then((_) {
  //   dbRepository.createParkinfo();
  //   runApp(const UPark());
  // });
}

class UPark extends StatefulWidget {
  const UPark({super.key});

  @override
  State<UPark> createState() => UParkState();
}

class UParkState extends State<UPark> {
  // final dbRepository = DBRepository();
  bool _isLightTheme = false;

  void _toggleTheme(bool isLightTheme) {
    setState(() {
      _isLightTheme = isLightTheme;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const ColorScheme customDarkColorScheme = ColorScheme(
      primary: Color(0xFF000000),
      onPrimary: Color(0xFF1C1D28),
      secondary: Color(0xFFB23537),
      onSecondary: Color(0xFFFFFFFF),
      error: Colors.red,
      onError: Colors.white,
      background: Color(0xFF1C1D28),
      onBackground: Colors.white,
      surface: Colors.black,
      onSurface: Colors.white,
      brightness: Brightness.dark,
    );

    const ColorScheme customLightColorScheme = ColorScheme(
      primary: Color(0xFFFFFFFF),
      // Light background
      onPrimary: Color(0xFF000000),
      // Dark text on light background
      secondary: Color(0xFFB23537),
      // Accent color remains the same
      onSecondary: Color(0xFFFFFFFF),
      // White text on secondary color
      error: Colors.red,
      // Error color remains the same
      onError: Colors.white,
      // White text on error color
      background: Color(0xFFFFFFFF),
      // Light background
      onBackground: Color(0xFF000000),
      // Dark text on light background
      surface: Color(0xFFFFFFFF),
      // Light surface
      onSurface: Color(0xFF000000),
      // Dark text on light surface
      brightness: Brightness.light, // Light theme brightness
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'U-Park',
      theme: ThemeData(
        colorScheme:
        _isLightTheme ? customLightColorScheme : customDarkColorScheme,
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
        MapScreen.routeName: (context) => const MapScreen(),
        SignIn.routeName: (context) => const SignIn(),
        SignUp.routeName: (context) => const SignUp(),
        Home.routeName: (context) => const Home(),
        ParkDetails.routeName: (context) => const ParkDetails(),
        Booking.routeName: (context) => const Booking(),
        Favourites.routeName: (context) => const Favourites(),
        Tickets.routeName: (context) => const Tickets(),
        TicketDetails.routeName: (context) => const TicketDetails(),
        Profile.routeName: (context) =>
            Profile(onThemeChanged: _toggleTheme, isLightTheme: _isLightTheme),
        ProfileSettings.routeName: (context) => const ProfileSettings(),
        ChangePassword.routeName: (context) => const ChangePassword(),
      },
    );
  }
}

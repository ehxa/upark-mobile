import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const double iconSize = 30.0;
    final bool showSelectedItemColor = currentIndex >= 0 && currentIndex <= 4;

    return BottomNavigationBar(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      selectedItemColor: showSelectedItemColor
          ? Theme.of(context).colorScheme.surface
          : Theme.of(context).colorScheme.onSurface,
      unselectedItemColor: Theme.of(context).colorScheme.onSurface,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: showSelectedItemColor ? currentIndex : 0,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.local_parking_rounded, size: iconSize),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star_rounded, size: iconSize),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long_rounded, size: iconSize),
          label: '',
        ),
        // BottomNavigationBarItem(
        //   icon: SvgPicture.asset(
        //     'lib/assets/icons/ticket3.svg',
        //     width: iconSize,
        //     height: iconSize,
        //     color: currentIndex == 2
        //         ? Theme.of(context).colorScheme.surface
        //         : Theme.of(context).colorScheme.onSurface,
        //   ),
        //   label: '',
        // ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded, size: iconSize),
          label: '',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/config/app_color.dart';

class MyBottomNavbar extends StatelessWidget {
  const MyBottomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.money),
          label: 'Money',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: AppColor.lev1,
      onTap: (value) {},
    );
  }
}

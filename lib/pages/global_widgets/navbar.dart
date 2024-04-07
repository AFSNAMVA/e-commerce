import 'package:flutter/material.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Ana Sayfa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Ara',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_travel),
          label: 'Profil',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.local_offer,
          ),
          label: 'Profil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: 'Profil',
        ),
      ],
      // currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: AppColors.neutralGrey,
      // onTap: _onItemTapped,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/components/home/header.dart';
import 'package:unjuk_keterampilan/components/home/today_card.dart';
import 'package:unjuk_keterampilan/config/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
          child: Column(
            children: [
              // Header
              const MyHeader(),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: const [
                    // Pengeluaran hari ini
                    Today(),
                    // Pengeluaran minggu ini

                    // Perbandingan bulan ini
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

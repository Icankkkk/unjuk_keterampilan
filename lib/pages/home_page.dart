import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/components/home/header.dart';
import 'package:unjuk_keterampilan/components/home/monthly_chart_pie.dart';
import 'package:unjuk_keterampilan/components/home/my_buttom_navbar.dart';
import 'package:unjuk_keterampilan/components/home/my_divider.dart';
import 'package:unjuk_keterampilan/components/home/today_card.dart';
import 'package:unjuk_keterampilan/components/home/weekly_chart_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNavbar(),
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
                    // Divider
                    MyDivider(),
                    // Pengeluaran minggu ini
                    Weekly(),
                    // Perbandingan bulan ini
                    Monthly(),
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

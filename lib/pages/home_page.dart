import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/components/home/header.dart';
import 'package:unjuk_keterampilan/components/home/today_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    // Pengeluaran hari ini
                    Today(),
                    // Pengeluaran hari ini
                    Today(),
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

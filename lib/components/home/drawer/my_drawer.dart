import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unjuk_keterampilan/components/home/drawer/my_drawer_header.dart';
import 'package:unjuk_keterampilan/controller/c_user.dart';
import 'package:unjuk_keterampilan/pages/history/add_history_page.dart';
import 'package:unjuk_keterampilan/pages/history/history_page.dart';
import 'package:unjuk_keterampilan/pages/history/income_outcome_page.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({
    super.key,
  });

  final userController = Get.put(CUser());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyDrawerHeader(userController: userController),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Get.to(() => AddHistoryPage());
                    },
                    leading: const Icon(Icons.add),
                    horizontalTitleGap: 0,
                    title: const Text(
                      'Tambah Baru',
                    ),
                    trailing: const Icon(Icons.navigate_next),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    onTap: () {
                      Get.to(() => const IncomeOutcomePage(
                            type: 'Pemasukan',
                          ));
                    },
                    leading: const Icon(Icons.south_west),
                    horizontalTitleGap: 0,
                    title: const Text('Pemasukan'),
                    trailing: const Icon(Icons.navigate_next),
                  ),
                  const Divider(height: 0.5),
                  ListTile(
                    onTap: () {
                      Get.to(
                          () => const IncomeOutcomePage(type: 'Pengeluaran'));
                    },
                    leading: const Icon(Icons.north_east),
                    horizontalTitleGap: 0,
                    title: const Text(
                      'Pengeluaran',
                    ),
                    trailing: const Icon(Icons.navigate_next),
                  ),
                  const Divider(height: 0.5),
                  ListTile(
                    onTap: () {
                      Get.to(
                        const HistoryPage(type: 'Riwayat'),
                      );
                    },
                    leading: const Icon(Icons.history),
                    horizontalTitleGap: 0,
                    title: const Text(
                      'Riwayat',
                    ),
                    trailing: const Icon(Icons.navigate_next),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
            child: Text(
              'Altera Academy - Unjuk Keterampilan\nMuhamad Faisal',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

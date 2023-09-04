import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:unjuk_keterampilan/components/history/my_dopdown_form_field.dart';
import 'package:unjuk_keterampilan/components/history/my_textfield.dart';
import 'package:unjuk_keterampilan/components/home/my_divider.dart';
import 'package:unjuk_keterampilan/components/my_elevated_button.dart';
import 'package:unjuk_keterampilan/config/app_color.dart';
import 'package:unjuk_keterampilan/config/app_format.dart';
import 'package:unjuk_keterampilan/controller/c_add_history.dart';

class AddHistoryPage extends StatelessWidget {
  AddHistoryPage({super.key});

  final cAddHistory = Get.put(CAddHistory());
  final cName = TextEditingController();
  final cPrice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text('Add history'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Text('Tanggal'),
          Row(
            children: [
              Obx(() {
                return Text(
                  cAddHistory.date,
                  style: const TextStyle(fontSize: 18),
                );
              }),

              // Icon kalender
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: ElevatedButton.icon(
                  onPressed: () async {
                    DateTime? result = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2023, 01, 01),
                      lastDate: DateTime(DateTime.now().year + 1),
                    );
                    if (result != null) {
                      cAddHistory
                          .setDate(DateFormat('yyyy-MM-dd').format(result));
                    }
                  },
                  icon: const Icon(Icons.event),
                  label: const Text('Pilih'),
                ),
              ),
            ],
          ),

          // Tipe
          MyDropdownButtonFormField(cAddHistory: cAddHistory),
          // Sumber history
          MyTextField(
            controllerName: cName,
            hint: 'Misalnya: beli kopi, jajan tahu',
            title: 'Sumber/Objek History',
            inputType: TextInputType.text,
          ),
          // Harga
          MyTextField(
            controllerName: cPrice,
            hint: 'Rp 20.000',
            title: 'Harga',
            inputType: TextInputType.number,
          ),
          const MyDivider(
            margin: EdgeInsets.only(top: 16, bottom: 0),
            height: 6,
            width: 100,
          ),

          // Tambah item
          MyElevatedButton(
            textButton: 'Tambah ke items',
            onPressed: () {},
          ),

          // Items
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 10),
            child: Text(
              'Items',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(bottom: 16),
            width: 360,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: GetBuilder<CAddHistory>(builder: (_) {
              return Wrap(
                runSpacing: 0,
                spacing: 8,
                children: List.generate(_.items.length, (index) {
                  return Chip(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ),
                    backgroundColor: Colors.transparent,
                    label: Text(_.items[index]),
                    deleteIcon: const Icon(Icons.clear),
                    onDeleted: () => _.deleteItem(index),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: const BorderSide(color: Colors.grey),
                    ),
                  );
                }),
              );
            }),
          ),
          // Total
          Row(
            children: [
              const Text('Total: '),
              Text(
                AppFormat.currency(cAddHistory.total.toString()),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColor.lev1,
                ),
              ),
            ],
          ),

          // Submit
          MyElevatedButton(
            margin: const EdgeInsets.fromLTRB(0, 32, 0, 10),
            onPressed: () {},
            textButton: 'SUBMIT',
            roundedRectangleBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ),
          ),
        ],
      ),
    );
  }
}

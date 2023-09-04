import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unjuk_keterampilan/components/history/my_search_bar_date.dart';
import 'package:unjuk_keterampilan/components/my_dialog_confirm.dart';
import 'package:unjuk_keterampilan/config/app_color.dart';
import 'package:unjuk_keterampilan/config/app_format.dart';
import 'package:unjuk_keterampilan/controller/c_history.dart';
import 'package:unjuk_keterampilan/data/model/history.dart';
import 'package:unjuk_keterampilan/pages/history/update_history_page.dart';

class IncomeOutcomePage extends StatefulWidget {
  const IncomeOutcomePage({super.key, required this.type});

  final String? type;
  @override
  State<IncomeOutcomePage> createState() => _IncomeOutcomePageState();
}

class _IncomeOutcomePageState extends State<IncomeOutcomePage> {
  final cSearch = TextEditingController();
  final cHistory = Get.put(CHistory());

  void menuOption(String value, History history) async {
    if (value == 'update') {
      Get.to(UpdateHistoryPage());
    } else if (value == 'delete') {
      bool? isDelete = await MyPackage.dialogConfirmation(
        context,
        title: 'Hapus',
        content: 'Yakin ingin menghapus history ini?',
        myStyle: const TextStyle(),
      );
      if (isDelete!) {
        Get.defaultDialog(middleText: 'Berhasil terhapus...');
      }
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            Text(widget.type!),
            Expanded(
              child: MySearchBarDate(cSearch: cSearch),
            ),
          ],
        ),
      ),
      body: GetBuilder<CHistory>(builder: (ctx) {
        return ListView.builder(
          itemCount: ctx.list.length,
          itemBuilder: (context, index) {
            History history = ctx.list[index];
            return Card(
              elevation: 4,
              margin: EdgeInsets.fromLTRB(
                20,
                index == 0 ? 16 : 8,
                20,
                index == ctx.list.length - 1 ? 16 : 8,
              ),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(4),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 8, 4),
                  child: Row(
                    children: [
                      Text(
                        history.date!,
                        style: const TextStyle(
                          color: AppColor.lev1,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Expanded(
                        child: Text(
                          AppFormat.currency(history.total!),
                          style: const TextStyle(
                            color: AppColor.lev3,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      PopupMenuButton<String>(
                        itemBuilder: (contex) => [
                          const PopupMenuItem(
                            value: 'update',
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Update',
                                  ),
                                ),
                                Icon(
                                  Icons.update,
                                  color: Color(0xff83D290),
                                ),
                              ],
                            ),
                          ),
                          const PopupMenuItem(
                            value: 'delete',
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Delete',
                                  ),
                                ),
                                Icon(
                                  Icons.delete_forever,
                                  color: Color(0XFFFF7171),
                                ),
                              ],
                            ),
                          ),
                        ],
                        onSelected: (value) => menuOption(value, history),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}

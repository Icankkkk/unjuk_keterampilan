import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unjuk_keterampilan/components/history/my_search_bar_date.dart';
import 'package:unjuk_keterampilan/config/app_color.dart';
import 'package:unjuk_keterampilan/config/app_format.dart';
import 'package:unjuk_keterampilan/controller/c_history.dart';
import 'package:unjuk_keterampilan/data/model/history.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key, required this.type});

  final String type;

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final cSearch = TextEditingController();
  final cHistory = Get.put(CHistory());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            Text(widget.type),
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
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                  child: Row(
                    children: [
                      history.type == 'Pemasukan'
                          ? Icon(Icons.south_west, color: Colors.green[300])
                          : Icon(Icons.north_east, color: Colors.red[300]),
                      const SizedBox(width: 16),
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
                      IconButton(
                        onPressed: () {},
                        icon:
                            Icon(Icons.delete_forever, color: Colors.red[300]),
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

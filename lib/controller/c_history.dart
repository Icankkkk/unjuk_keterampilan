import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:unjuk_keterampilan/data/model/history.dart';

class CHistory extends GetxController {
  final _list = <History>[
    History(
        type: 'Pemasukan',
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        total: '100000.0'),
    History(
        type: 'Pemasukan',
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        total: '50000.0'),
    History(
        type: 'Pengeluaran',
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        total: '20000.0'),
    History(
        type: 'Pengeluaran',
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        total: '35000.0'),
    History(
        type: 'Pengeluaran',
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        total: '15000.0'),
    History(
        type: 'Pengeluaran',
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        total: '20000.'),
    History(
        type: 'Pengeluaran',
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        total: '10000.'),
    History(
        type: 'Pengeluaran',
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        total: '50000.'),
    History(
        type: 'Pemasukan',
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
        total: '50000.0'),
  ].obs;

  List<History> get list => _list.toList();

  final _loading = false.obs;
  bool get loading => _loading.value;

  setData(dynamic n) => _list.value = n;

  getList(type) async {}
}

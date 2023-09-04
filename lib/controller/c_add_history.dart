import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CAddHistory extends GetxController {
  final _date = DateFormat('yyyy-MM-dd').format(DateTime.now()).obs;
  String get date => _date.value;
  setDate(n) => _date.value = n;

  final _type = 'Pemasukan'.obs;
  String get type => _type.value;
  setType(n) => _type.value = n;

  final _items = [
    'Beli kopi',
    'Bensin',
    'Jajan cilok',
    'Bioskop',
  ].obs;

  List get items => _items.toList();

  addItem(n) {
    _items.add(n);
    update();
  }

  deleteItem(i) {
    _items.removeAt(i);
  }

  final _total = 300000.0.obs;
  double get total => _total.value;
}

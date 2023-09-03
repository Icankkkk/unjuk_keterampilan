import 'package:get/get.dart';
import 'package:unjuk_keterampilan/data/model/user.dart';

class CUser extends GetxController {
  final _data = User().obs;
  User get data => _data.value;
  setData(dynamic n) => _data.value = n;
}

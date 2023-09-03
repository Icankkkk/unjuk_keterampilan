import 'package:get/get.dart';
import 'package:unjuk_keterampilan/data/model/user.dart';

class CUser extends GetxController {
  final _data =
      User(email: 'admin@gmail.com', password: '123', name: 'Faisal').obs;
  User get data => _data.value;
  setData(dynamic n) => _data.value = n;
}

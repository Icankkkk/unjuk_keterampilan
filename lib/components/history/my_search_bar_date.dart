import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:unjuk_keterampilan/config/app_color.dart';

class MySearchBarDate extends StatelessWidget {
  const MySearchBarDate({
    super.key,
    required this.cSearch,
  });

  final TextEditingController cSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(40, 16, 20, 16),
      height: 40,
      child: TextField(
        controller: cSearch,
        onTap: () async {
          DateTime? result = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2023, 01, 01),
            lastDate: DateTime(DateTime.now().year + 1),
          );

          if (result != null) {
            cSearch.text = DateFormat('yyyy-MM-dd').format(result);
          }
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          fillColor: AppColor.lev3,
          filled: true,
          isDense: false,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 24,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          hintText: DateFormat('yyyy-MM-dd').format(DateTime.now()),
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
        ),
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}

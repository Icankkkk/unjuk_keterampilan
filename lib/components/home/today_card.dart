import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/config/app_color.dart';

class Today extends StatelessWidget {
  const Today({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: Text(
            'Pengeluaran Hari Ini',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        // card
        Material(
          color: AppColor.lev1,
          borderRadius: BorderRadius.circular(14),
          elevation: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 20, 16, 4),
                child: Text(
                  'Rp. 500.000,00',
                  style: TextStyle(
                    color: AppColor.lev4,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 4, 0, 30),
                child: Text(
                  '+20% dibanding kemarin',
                  style: TextStyle(color: AppColor.lev4),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                child: InkWell(
                  onTap: () {},
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  child: Ink(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Selengkapnya',
                          style: TextStyle(
                            color: AppColor.lev1,
                          ),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: AppColor.lev1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

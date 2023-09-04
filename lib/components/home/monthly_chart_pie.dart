import 'package:d_chart/commons/config_render.dart';
import 'package:d_chart/commons/data_model.dart';
import 'package:d_chart/ordinal/pie.dart';
import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/config/app_color.dart';

class Monthly extends StatelessWidget {
  const Monthly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<OrdinalData> ordinalDataList = [
      OrdinalData(domain: 'Income', measure: 6, color: AppColor.lev1),
      OrdinalData(domain: 'Outcome', measure: 3, color: AppColor.lev3),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
          child: Text(
            'Perbandingan Bulan Ini',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              child: Stack(
                children: [
                  DChartPieO(
                    data: ordinalDataList,
                    animate: true,
                    configRenderPie: const ConfigRenderPie(
                      arcWidth: 18,
                      strokeWidthPx: 2,
                    ),
                  ),
                  const Center(
                    child: Text(
                      '60%',
                      style: TextStyle(
                        color: AppColor.lev1,
                        fontSize: 36,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 8, 0),
                      width: 17,
                      height: 17,
                      color: AppColor.lev1,
                    ),
                    const Text('Pemasukan'),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 8, 0),
                      width: 17,
                      height: 17,
                      color: AppColor.lev3,
                    ),
                    const Text('Pengeluaran'),
                  ],
                ),
                // Keterangan
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 24, 0, 0),
                  child: Text(
                    'Pemasukan\nLebih besar 20%\ndari Pengeluaran.\n\nAtau setara:',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 4, 0, 0),
                  child: Text(
                    'Rp 20.000,00',
                    style: TextStyle(
                      color: AppColor.lev1,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

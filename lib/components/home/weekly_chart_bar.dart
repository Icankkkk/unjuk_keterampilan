import 'package:d_chart/commons/axis.dart';
import 'package:d_chart/commons/data_model.dart';
import 'package:d_chart/commons/decorator.dart';
import 'package:d_chart/commons/enums.dart';
import 'package:d_chart/commons/style.dart';
import 'package:d_chart/ordinal/bar.dart';
import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/config/app_color.dart';

class Weekly extends StatelessWidget {
  const Weekly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<OrdinalData> ordinalList = [
      OrdinalData(domain: 'Sen', measure: 3),
      OrdinalData(domain: 'Sel', measure: 5),
      OrdinalData(domain: 'Rab', measure: 7),
      OrdinalData(domain: 'Kam', measure: 6),
      OrdinalData(domain: 'Jum', measure: 8),
      OrdinalData(domain: 'Sab', measure: 4),
      OrdinalData(domain: 'Min', measure: 9),
    ];

    final ordinalGroup = [
      OrdinalGroup(
        id: '1',
        data: ordinalList,
        color: AppColor.lev1,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: Text(
            'Pengeluaran Minggu Ini',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        // Cart
        AspectRatio(
          aspectRatio: 16 / 9,
          child: DChartBarO(
            groupList: ordinalGroup,
            animate: true,
            barLabelValue: (group, ordinalData, index) {
              return ordinalData.measure.round().toString();
            },
            barLabelDecorator: BarLabelDecorator(
              labelPadding: 10,
              barLabelPosition: BarLabelPosition.auto,
            ),
            domainAxis: const DomainAxis(
              gapAxisToLabel: 10,
              lineStyle: LineStyle(
                thickness: 1,
              ),
            ),
            measureAxis: const MeasureAxis(
              gapAxisToLabel: 16,
              showLine: true,
              lineStyle: LineStyle(
                color: Colors.black,
              ),
              thickLength: 8,
            ),
          ),
        ),
      ],
    );
  }
}

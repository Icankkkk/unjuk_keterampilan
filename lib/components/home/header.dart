import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/config/app_asset.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Profile
        Image.asset(
          AppAsset.profile,
          width: 70,
        ),
        const SizedBox(width: 4),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Faisal',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        // Menu button
        Builder(
          builder: (drawer) {
            return InkWell(
              onTap: () {
                Scaffold.of(drawer).openEndDrawer();
              },
              child: const Icon(
                Icons.menu,
                size: 40,
              ),
            );
          },
        ),
      ],
    );
  }
}

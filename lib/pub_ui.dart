import 'package:flutter/material.dart';

import 'hotline_list.dart';

class PubUI extends StatelessWidget {
  const PubUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const HotlineList(
      title: 'สาธารณูปโภค',
      folder: 'pubutil',
      prefix: 'pub',
      entries: [
        ('การไฟฟ้านครหลวง', '1130', 1),
        ('การไฟฟ้าส่วนภูมิภาค', '1129', 2),
        ('การไฟฟ้าฝ่ายผลิต', '1416', 3),
        ('การประปานครหลวง', '1125', 4),
        ('การประปาส่วนภูมิภาค', '1662', 5),
        ('True', '1242', 6),
        ('dtac', '1678', 7),
        ('AIS', '1175', 8),
        ('TOT', '1100', 9),
      ],
    );
  }
}
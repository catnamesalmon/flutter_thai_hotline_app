import 'package:flutter/material.dart';

import 'hotline_list.dart';

class TravelUI extends StatelessWidget {
  const TravelUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const HotlineList(
      title: 'การเดินทาง',
      folder: 'travel',
      prefix: 'travel',
      entries: [
        ('ข้อมูลจราจร', '1197', 4),
        ('ตำรวจทางหลวง', '1193', 3),
        ('ตำรวจท่องเที่ยว', '1155', 2),
        ('เส้นทางบนทางด่วน', '1543', 7),
        ('ขสมก.', '1348', 5),
        ('บขส.', '1490', 6),
        ('กรมทางหลวงชนบท', '1146', 1),
        ('กรมทางหลวง', '1586', 8),
        ('การรถไฟแห่งประเทศไทย', '1690', 9),
      ],
    );
  }
}
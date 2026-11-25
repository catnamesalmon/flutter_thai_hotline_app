import 'package:flutter/material.dart';

import 'hotline_list.dart';

class EmgUI extends StatelessWidget {
  const EmgUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const HotlineList(
      title: 'อุบัติเหตุ–เหตุฉุกเฉิน',
      folder: 'emergency',
      prefix: 'emg',
      entries: [
        ('เหตุด่วนเหตุร้าย', '191', 1),
        ('ศูนย์ปลอดภัยคมนาคม', '1356', 6),
        ('หน่วยแพทย์กู้ชีพ', '1554', 7),
        ('ศูนย์เอราวัณ', '1646', 8),
        ('เจ็บป่วยฉุกเฉิน', '1669', 9),
        ('แจ้งไฟไหม้ / สัตว์เข้าบ้าน', '199', 2),
        ('สายด่วนรถหาย', '1192', 3),
        ('อุบัติเหตุทางน้ำ', '1196', 4),
        ('แจ้งคนหาย', '1300', 5),
      ],
    );
  }
}
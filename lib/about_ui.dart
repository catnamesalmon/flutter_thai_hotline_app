import 'package:flutter/material.dart';

class AboutUI extends StatelessWidget {
  const AboutUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('สายด่วน THAILAND')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        children: [
          const Text(
            'ผู้จัดทำ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 22),
          Center(
            child: Image.asset(
              'images/aboutme/saulogo.png',
              width: 112,
              height: 112,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'มหาวิทยาลัยเอเชียอาคเนย์',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 42),
          const Center(
            child: CircleAvatar(
              radius: 66,
              backgroundImage: AssetImage('images/aboutme/me.png'),
            ),
          ),
          const SizedBox(height: 22),
          for (final line in [
            'รหัสนักศึกษา 6819110040',
            'รลิฐา ธารามาศ',
            'S6819110040@sau.ac.th',
            'สาขาวิชาวิศวกรรมคอมพิวเตอร์',
            'คณะวิศวกรรมศาสตร์',
          ])
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(line, textAlign: TextAlign.center),
            ),
        ],
      ),
    );
  }
}
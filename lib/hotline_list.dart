import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HotlineList extends StatelessWidget {
  const HotlineList({
    super.key,
    required this.title,
    required this.folder,
    required this.prefix,
    required this.entries,
  });

  final String title;
  final String folder;
  final String prefix;
  final List<(String, String, int)> entries;

  String _image(int number) => 'images/$folder/${prefix}_$number.png';

  Future<void> _dial(BuildContext context, String number) async {
    final digits = number.replaceAll(RegExp(r'[^0-9]'), '');

    try {
      if (await launchUrl(Uri(scheme: 'tel', path: digits))) return;
    } on Exception {
      // แสดงเบอร์ด้านล่างเมื่อเปิดแอปโทรไม่ได้
    }

    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('เปิดแอปโทรไม่ได้: $number')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 18, 16, 20),
      itemCount: entries.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(
            children: [
              Text(
                'สายด่วน\n$title',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  height: 1.15,
                ),
              ),
              const SizedBox(height: 14),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  _image(0),
                  width: 200,
                  height: 145,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 18),
            ],
          );
        }

        final (name, number, imageNumber) = entries[index - 1];
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Card(
            margin: EdgeInsets.zero,
            color: Colors.white,
            surfaceTintColor: Colors.transparent,
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Color(0xFFE0E0E0)),
            ),
            child: ListTile(
              minTileHeight: 80,
              leading: SizedBox.square(
                dimension: 48,
                child: Image.asset(_image(imageNumber), fit: BoxFit.contain),
              ),
              title: Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(number),
              trailing: IconButton(
                tooltip: 'โทร $name $number',
                icon: const FaIcon(FontAwesomeIcons.phone, size: 19),
                onPressed: () => _dial(context, number),
              ),
            ),
          ),
        );
      },
    );
  }
}
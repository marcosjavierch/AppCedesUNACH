import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TablaRedesSociales extends StatelessWidget {
  const TablaRedesSociales({Key? key}) : super(key: key);

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse("https://$url");

    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    List<List<dynamic>> data = [
      [
        'Red Social',
        'Usuario',
        'Liga',
      ],
      [
        Image.network('https://cedes.unach.mx/images/2023/image13.png'),
        'cedes.unach',
        GestureDetector(
          onTap: () {
            _launchURL(
                "www.unach.mx/acerca-de/identidad#nuestro-escudo");
          },
          child: const Text('https://www.cedes.unach.mx',
              style: TextStyle(
                  color: Color(0xFF18386B))
          ),
        ),
      ],
      [
        Image.network('https://cedes.unach.mx/images/2023/image14.png'),
        'UNACHCEDES',
        GestureDetector(
          onTap: () {
            _launchURL(
                "www.facebook.com/unachcedes");
          },
          child: const Text('https://www.facebook.com/unachcedes',
              style: TextStyle(
                  color: Color(0xFF18386B))
          ),
        ),
      ],
      [
        Image.network('https://cedes.unach.mx/images/2023/image15.png'),
        'CEDESUNACH',
        GestureDetector(
          onTap: () {
            _launchURL('www.youtube.com/user/CEDESUNACH');
          },
          child: const Text(
            'https://www.youtube.com/user/CEDESUNACH',
            style: TextStyle(
              color: Color(0xFF18386B),
            ),
          ),
        ),
      ],
      [
        Image.network('https://cedes.unach.mx/images/2023/image16.jpg'),
        'unach.cedes',
        GestureDetector(
          onTap: () {
            _launchURL('www.instagram.com/unach.cedes/');
          },
          child: const Text(
            'https://www.instagram.com/unach.cedes/',
            style: TextStyle(
              color: Color(0xFF18386B),
            ),
          ),
        ),
      ],
      [
        Image.network('https://cedes.unach.mx/images/2023/X.png'),
        'cedesunach',
        GestureDetector(
          onTap: () {
            _launchURL('twitter.com/cedesunach');
          },
          child: const Text(
            'https://twitter.com/cedesunach',
            style: TextStyle(
              color: Color(0xFF18386B),
            ),
          ),
        ),
      ],
      [
        Image.network('https://cedes.unach.mx/images/2023/image18.png'),
        'UNACHCEDES',
        GestureDetector(
          onTap: () {
            _launchURL("https://www.tiktok.com/@unachcedes");
          },
          child: const Text(
            'https://www.tiktok.com/@unachcedes',
            style: TextStyle(
              color: Color(0xFF18386B),
            ),
          ),
        ),
      ],
      [
        Image.network('https://cedes.unach.mx/images/2023/image19.png'),
        'unachcedes',
        GestureDetector(
          onTap: () {
            _launchURL("https://www.linkedin.com/in/unachcedes/");
          },
          child: const Text(
            'https://www.linkedin.com/in/unachcedes/',
            style: TextStyle(
              color: Color(0xFF18386B),
            ),
          ),
        ),
      ],
      [
        Image.network('https://cedes.unach.mx/images/2023/image20.jpg'),
        'cedesunach',
        GestureDetector(
          onTap: () {
            _launchURL("https://www.twitch.tv/cedes_unach");
          },
          child: const Text(
            'https://www.twitch.tv/cedes_unach',
            style: TextStyle(
              color: Color(0xFF18386B),
            ),
          ),
        ),
      ],
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(1.0),
          1: FlexColumnWidth(1.5),
          2: FlexColumnWidth(2.0),
          3: FlexColumnWidth(2.0),
        },
        border: TableBorder.all(),
        children: data.map((row) {
          return TableRow(
            children: row.map((cellData) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: cellData is String
                    ? Text(
                  cellData,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                )
                    : cellData,
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Posgrado extends StatelessWidget {
  const Posgrado ({Key? key}) : super(key: key);

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
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          title: const Text('POSGRADO'),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black,
        ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: ColoredBox(
              color: Color(0xFFFFFFFF),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Color(0xFF01579B),
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  tabs: [
                    Tab(text: 'Maestría en Gestión y Políticas Públicas'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ///Maestría en Gestión y Políticas Públicas
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'En construcción',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:unachcedes/widgets/tabla_redes_sociales.dart';
import 'home_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:unachcedes/widgets/tabla_redes_sociales.dart';

class RedesSociales extends StatelessWidget {
  const RedesSociales ({Key? key}) : super(key: key);

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
          title: const Text('Redes Sociales'),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: Colors.black,
        ),
        backgroundColor: Colors.white,
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
                    Tab(text: 'Redes Sociales'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                Column(
                  children: const [
                     Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        '¡Bienvenidos!',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 20),
                      child: Text(
                        'Únete y sigue nuestras redes sociales',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: TablaRedesSociales()
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

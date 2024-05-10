import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class BolsaDeTrabajo extends StatelessWidget {
  const BolsaDeTrabajo({Key? key}) : super(key: key);


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
          centerTitle: true,
          title: const Text('Bolsa de trabajo'),
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: const TextStyle(
            fontSize: 16,
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
                tabs: [
                  Tab(text: 'Bolsa de trabajo'),
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                          'https://cedes.unach.mx/images/245927957_952779181988234_3442738371347805102_n.jpg',
                        height: 220,
                      )
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Image.network(
                          'https://cedes.unach.mx/images/WhatsApp_Image_2021-04-19_at_23542_PM.jpeg',
                          height: 220,
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Image.network(
                          'https://cedes.unach.mx/images/vacantes_ine.jpg',
                          height: 220,
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                              "www.ine.mx/comunidad-ine/");
                        },
                        child: const Text(
                            'https://www.ine.mx/comunidad-ine/',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                                color: Color(0xFF18386B))
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Image.network(
                          'https://cedes.unach.mx/images/feriaempleonacional.jpeg',
                          height: 650,
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Image.network(
                          'https://cedes.unach.mx/images/Screenshot_2021-03-24_1ERA_FERIA_NACIONAL_DE_EMPLEO_JUVENIL_TUXTLA_GUTIERREZ_2021.png',
                          height: 250,
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,  left: 15),
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children:  [
                            const Text(
                              'La Secretaría de Economía y del Trabajo. te invita a la: PRIMERA FERIA NACIONAL DE EMPLEO JUVENIL TUXTLA GUTIÉRREZ 2021. \n29 de marzo en el Parque Bicentenario a partir de las 8 horas.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _launchURL("bit.ly/313ScDm");
                              },
                              child: const Text(
                                'Realiza tu registro aquí',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF18386B),
                                ),
                              ),
                            ),
                          ],
                        ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child:  Text(
                            'Bolsa de trabajo INEGI',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                            ),
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Image.network(
                          'https://cedes.unach.mx/images/INEGI-800x480.jpg',
                          height: 250,
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                              "www.inegi.org.mx/app/spc/plazasenconcurso.aspx");
                        },
                        child: const Text(
                            'https://www.inegi.org.mx/app/spc/plazasenconcurso.aspx',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF18386B))
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Image.network(
                          'https://cedes.unach.mx/images/logooccmundial.png',
                          height: 250,
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                              "www.occ.com.mx/empleos/en-chiapas/en-la-ciudad-de-tuxtla-gutierrez/?smax=10000&gclid=EAIaIQobChMIvtSRrNzG7wIVwaGGCh1OUg4GEAAYASAAEgJLsvD_BwE");
                        },
                        child: const Text(
                            ' Bolsa de trabajo Tuxtla Gutiérrez Marzo 2021- OCCMundial',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF18386B))
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            for (int i = 1; i < 8; i++)
              i == 0 ? Container() : Center(child: Text('Pantalla ${i + 1}')),
          ],
        ),
      ),
    );
  }
}

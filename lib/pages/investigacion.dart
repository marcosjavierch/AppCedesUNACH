import 'package:flutter/material.dart';
import 'package:unachcedes/widgets/tabla_docentes_cip.dart';
import 'package:unachcedes/widgets/tabla_docentes_cipsei.dart';
import 'package:unachcedes/widgets/tabla_docentes_perfil.dart';
import 'home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Investigacion extends StatelessWidget {
  const Investigacion ({Key? key}) : super(key: key);

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
      length: 5,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          title: const Text('INVESTIGACIÓN'),
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
                    Tab(text: 'Investigadores SNI'),
                    Tab(text: 'Investigadores SEI'),
                    Tab(text: 'Perfil Deseable'),
                    Tab(text: 'Cuerpos Académicos'),
                    Tab(text: 'Proyectos de Investigación'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ///INVESTIGADORES SNI
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        'assets/logocip.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'El Sistema Nacional de Investigadores (SNI), fue creado por Acuerdo Presidencial en 1984, para reconocer la labor de las personas dedicadas a producir conocimiento científico y tecnología.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'El Sistema contribuye a la formación y consolidación de investigadores con conocimientos científicos y tecnológicos del más alto nivel como un elemento fundamental para incrementar la cultura, productividad, competitividad y el bienestar social.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Esta distinción simboliza la calidad y prestigio de las contribuciones científicas de nuestros investigadores del Centro. (Consejo Nacional de Humanidades, Ciencia y Tecnología. 2023)',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: const [
                            Text(
                              'DOCENTES CEDES',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: const [
                            Text(
                              'CON RECONOCIMIENTO EN EL SISTEMA NACIONAL DE INVESTIGADORES (SNI) DEL CONAHCYT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: const [
                            Text(
                              'VIGENTE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: TablaDocentesCIP(),
                          )
                        ],
                      ),
                    ),
                    /*Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              '*Consulta el CV de los investigadores, dando clic en el nombre.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),*/
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("https://www.dgip.unach.mx/index.php/academicos#docentes-de-la-unach-miembros-del-sistema-nacional-de-investigadores");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Dirección General de Investigación y Posgrado – UNACH"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        'assets/logocipf.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ///INVESTIGADORES SEI
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        'assets/logocip.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'El Sistema Estatal de Investigadores (SEI), es un programa institucional del Gobierno del Estado de Chiapas, operado por el Instituto de Ciencia, Tecnología e Innovación, con fundamento legal en la Ley Estatal de Ciencia y Tecnología para miembros de la comunidad científica y tecnológica que laboren en Instituciones de Educación Superior y/o Centros de Investigación del sector público o privado del Estado inscritas en el Registro Nacional de Instituciones y Empresas Científicas y Tecnológicas. (Instituto de Ciencia, Tecnología e Innovación. 2023)',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: const [
                            Text(
                              'DOCENTES CEDES',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: const [
                            Text(
                              'CON RECONOCIMIENTO EN EL SISTEMA ESTATAL DE INVESTIGADORES DEL INSTITUTO DE CIENCIA, TECNOLOGÍA E INNOVACIÓN (ICTI) DEL ESTADO DE CHIAPAS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: const [
                            Text(
                              'VIGENTE 2023',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: TablaDocentesCIPSEI(),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("https://www.unach.mx/investigacion/sistema-estatal-de-investigadores-sei");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Fuente"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        'assets/logocipf.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //PERFIL DESEABLE
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        'assets/logocip.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Programa para el Desarrollo Profesional Docente, para el Tipo Superior (PRODEP)',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Este programa busca profesionalizar a los Profesores de Tiempo Completo (PTC) para que alcancen las capacidades de investigación-docencia, desarrollo tecnológico e innovación y con responsabilidad social, se articulen y consoliden en cuerpos académicos y con ello generen una nueva comunidad académica capaz de transformar su entorno',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: const [
                            Text(
                              'DOCENTES CEDES',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: const [
                            Text(
                              'CON RECONOCIMIENTO DEL PROGRAMA PARA EL DESARROLLO PROFESIONAL DOCENTE - PRODEP',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: const [
                            Text(
                              'VIGENTE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: TablaDocentesPerfil(),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("https://dgip.unach.mx/index.php/academicos/18-perfil-deseable");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Ver fuente"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        'assets/logocipf.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //CUERPOS ACADEMICOS
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
                              'El objetivo principal del Programa para el Desarrollo Profesional para el tipo Superior, es profesionalizar a los/as profesores/as de tiempo completo para que alcancen las capacidades de investigación-docencia, desarrollo tecnológico e innovación y, con responsabilidad social, se articulen y consoliden en cuerpos académicos (CA) y con ello generen una nueva comunidad académica capaz de transformar su entorno. Para alcanzar este objetivo la SEP, a través de la SES ha emprendido en el marco del programa varias acciones enfocadas a promover que los profesores/as de tiempo completo se integren en CA y con ello sustentar la formación de profesionales de buena calidad, responsables y competitivos. La SEP, a través de la SES, convoca a los CA de las IES adscritas al Programa a presentar proyectos que fomenten su desarrollo y consolidación (UNACH-DGIP).',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                      child: Image.asset(
                        'assets/tablaacademicos.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //PROYECTOS DE INVESTIGACION
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/P_2023.jpg',
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

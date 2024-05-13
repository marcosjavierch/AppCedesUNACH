import 'package:unachcedes/widgets/tabla_legislacion.dart';
import 'package:unachcedes/widgets/tabla_sitios_interes.dart';
import 'package:unachcedes/widgets/tabla_encuentros_dvv.dart';
import 'package:flutter/material.dart';
import 'package:unachcedes/widgets/tabladvvdiplomados.dart';
import 'home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class ThinkTank extends StatelessWidget {
  const ThinkTank({Key? key}) : super(key: key);

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
      length: 7,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Think Tank Webinar Series'),
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
                    Tab(text: '2024'),
                    Tab(text: '2023'),
                    Tab(text: '2022'),
                    Tab(text: '2021'),
                    Tab(text: '2020'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ///2024
            ListView(
              children: [
                Column(
                  children: [
                     Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15, top: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: const [
                            Text(
                              'Think Tank Webinar Series',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
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
                                'Tema: «Políticas Públicas con enfoque de Derechos Humanos: Un Camino por recorrer»\nPonente: Mtra. Paola Marcela Iregui Parra, Profesora de Carrera Académica, Universidad del Rosario.\nModerador: Dr. Octavio Grajales Castillejos, Docente, CEDES-UNACH.\nSíguenos desde Facebook en: https://fb.me/e/1zEIe99s5\nPersonas alcanzadas: 248 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2024/1.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: «El uso de los sensores remotos en estudios ambientales y aplicaciones en estimación de parámetros de interés forestal»\nPonente: Dr. Francisco Mauro Gutiérrez, investigador asociado, Universidad de Valladolid.\nModerador: Dr. Moisés Silva Cervantes, Profesor Investigador, CEDES-UNACH.\nSíguenos desde Facebook en: https://fb.me/e/1Q4u6I4pM\nPersonas alcanzadas: 157 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2024/2.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: “Día Internacional de la Lengua Materna.” Preservando nuestras raíces.\nPanelistas: Mtra. Sara Gutiérrez Moreno,Directora Técnica de Educación Preescolar Indígena. SEF.\nDr. Alonso Méndez Guzmán, Asesor académico de la Dirección de Educación Indígena. SEF.\nDr. Mario Artemio Aguilar Nandayapa. Escritor y Académico. UNACH\nModeradora: Dra. Andrea Mena Álvarez. Coordinadora General, CEDES-UNACH.\nSíguenos desde Facebook en: https://fb.me/e/1RNDxGQFh\nPersonas alcanzadas: 413 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2024/3.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: «Atención y acceso a la salud en hogares censales con migrantes recientes mexicanos retornados de Estados Unidos, 2020.»\nPonentes: Dr. José Alfredo Jáuregui Diaz. Profesor-Investigador, Universidad Autónoma de Nuevo León.\nDra. María de Jesús Ávila Sánchez. Profesora-Investigadora, Universidad Autónoma de Nuevo León.\nModerador: Dr. Octavio Grajales Castillejos. Docente, CEDES-UNACH.\nSíguenos desde Facebook en: https://fb.watch/rPsYKTF4-e/\nPersonas alcanzadas: 84 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2024/4.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: «Presentación del Libro "Chiapas en el laberinto: estancamiento secular y crisis estructural de su economía"»\nPonente: Dr. Jorge Alberto López Arévalo. Profesor-Investigador, UNACH.\nModerador: Dr. Moisés Silva Cervantes. Profesor-Investigador, CEDES-UNACH.\nComentarista: Lic. Ramón Eloy Cerda Castillo. Enlace Institucional de la GDM para el INAFED, CEDES-UNACH.',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2024/5.jpg',
                        height: 250,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //2023
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15, top: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: const [
                            Text(
                              'Think Tank Webinar Series',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
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
                                'Tema: El uso de técnicas estadísticas para el análisis cuantitativo de los resultados de un proyecto de investigación.\nFecha: Viernes 20 de enero de 2023\nPonente: Dra. Rocío Huerta Cuervo\nModerador: Dr. Oscar Ausencio Carballo Aguilar\nLink del video: https://fb.me/e/2DSYxxNyj\nPersonas alcanzadas: 412 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2023/el_uso_de_tcnicas.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: El Soconusco y sus migraciones: una mirada a la diversidad de las movilidades humanas.\nFecha: Viernes 24 de febrero de 2023\n: Martha Luz Rojas Wiesner\nModerador: Rolando Antonio Espinosa\nLink del video: https://fb.me/e/2kCR7gEQO\nPersonas alcanzadas: 215 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2023/el_soconusco.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Nanopartículas contra la resistencia a los antibióticos (NanoResist).\nFecha: Viernes 10 de marzo de 2023\nPonente: Karla Patricia Mayolo Deloisa\nModeradora: Yojana Jautzi Pupuri Carreón Herrera\nLink del video: https://fb.me/e/2CZ522kSG\nPersonas alcanzadas: 214 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2023/nano_particulas.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: «Cultura Estadística y Datos Abiertos», «El Quehacer Estadístico y Geográfico del INEGI»\nFecha: Jueves 23 de marzo de 2023\nPonente: Sergio Alberto Castillo Páez, Francisco Javier Velázquez Sotelo\nModerador: Óscar Ausencio Carballo Aguilar\nLink del video: https://www.facebook.com/unachcedes/videos/142133602123175\nPersonas alcanzadas: 430 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2023/cultura_estadistica.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Conversatorio: Experiencias de mujeres en el área STEM. ¿Qué podemos aprender en la Licenciatura en Estadística y Sistemas de Información para incentivar vocaciones científicas femeninas?»\nFecha: Viernes 31 de marzo de 2023\nPonente: Hernández Chávez.\n Lucero Hernández Martínez.\nAriadna Garza Ortiz.\nPeggy Elizabeth Álvarez Gutiérrez.\nMaría Inés Nicolás Vázquez.\nAmérica Berenice Morales Díaz.\nNadia Valentina Martínez Villegas\nModeradora: Emma del Carmen Aguilar Pinto\nLink del video: https://www.facebook.com/unachcedes/videos/6000657229989224\nPersonas alcanzadas: 623 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2023/conversatorio.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Uso y disponibilidad de las TIC en los Hogares\nFecha: Viernes 28 de abril de 2023\nPonente: Jorge Omar Juarez Reyes\nModerador: Minerva Gamboa Sanchez\nLink del video: https://fb.me/e/133mo0gCB\nPersonas alcanzadas: 309  en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2023/uso_y_disponibilidad.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Educación de Adultos en Colombia\nFecha: Viernes 16 de junio de 2023\nPonente: Luis Eduardo Acuña Galindo\nModeradora: Emma del Carmen Aguilar Pinto\nLink del video: https://fb.me/e/1drzPD29U\nPersonas alcanzadas: 117 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2023/educacion_de_adultos.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Educación comunitaria: educando desde y con la comunidad. Caso Perú.\nFecha: Viernes 04 de agosto de 2023\nPonente: Juana María Sono Hernández\nModerador: Marco Antonio Lara Martínez\nLink del video: https://fb.me/e/16mrveyxt\nPersonas alcanzadas: 118 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2023/caso_peru.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Educación en contextos de encierro en el Ecuador\nPonente: Fernanda Elizabeth Hidalgo Ortíz. Analista de la Dirección Nacional de Educación para Personas con Escolaridad Inconclusa, Ministerio de Educación de Ecuador.\nModeradora: Reyna del Carmen Alfaro Pérez. Docente, UNACH-CEDES.\nFecha: Viernes 18 de agosto de 2023 11:00 horas CDMX\nLink del video: https://www.facebook.com/unachcedes/videos/1001589777705356\nPersonas alcanzadas: 234 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2023/09.jpeg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Investigación operativa para la optimización de la distribución de alimentos a familias vulnerables\nPonente: Dr. Marc Juanpera Gallel. Profesor Lector, Universitat Politécnica de Catalunya de Barcelona, España.\nModeradora: Dra. Betty Yolanda López Zapata. Directora de Ingeniería Biomédica de la Universidad Politécnica de Chiapas, México.\nFecha: Viernes 08 de septiembre de 2023 11:00 horas CDMX\nLink del video: https://fb.me/e/xJufcVJ2\nPersonas alcanzadas: 89 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2023/10.jpeg',
                        height: 250,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //2022
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15, top: 20),
                      child: Text(
                        'Think Tank Webinar Series',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
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
                                'Defensa no jurisdiccional de los Derechos Humanos en el ámbito Municipal\nFecha: Viernes 21 de enero de 2022\nPonente: Dr. Eliceo Muñoz Mena\nModeradora: Mtra. Guadalupe Guillén Flores\nLink del video: https://fb.me/e/1p6FeYgfj\nLink de youtube: https://www.youtube.com/watch?v=cs0nksdGQcA\nPersonas alcanzadas: 339 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2022/Defensa_no_jurisdiccional_de_los_Derechos_Humanos_en_el_mbito_Municipal.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Análisis de datos en Astropartículas\nFecha: Viernes 11 de febrero de 2022\nPonente: Dra. Karen Salomé Caballero Mora\nModeradora: Dra. Bianca Yadira Pérez Sariñana\nLink del video: https://fb.me/e/1UzbnYry9\nLink de facebook: https://fb.watch/mjCh7LsLpa/\nPersonas alcanzadas: 393 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2022/Anlisis_de_datos_en_Astropartculas.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: La transversalidad de la estadística en el proceso de la investigación\nFecha: Viernes 25 de febrero de 2022\nPonente: Dr. Óscar Ausencio Carballo Aguilar\nModeradora: Biól. María Stefany Gordillo Martínez\nLink de facebook: https://fb.watch/mjDt7BpS51/\nPersonas alcanzadas: 241 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2022/La_transversalidad_de_la_estadstica.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Desarrollo y Gobernabilidad en el contexto municipal\nFecha: Viernes 18 de marzo de 2022\nPonente: Dra. Irene Barboza Carrasco, Mtra. Aurelia Berenice Cordero Pérez y Dr. Julio Guillén Velázquez\nModerador: Mtro. Edgar de Jesús Zamudio Velasco\nLink del video: https://fb.me/e/2ZL3BuEQw\nLink de youtube: https://www.youtube.com/watch?v=1G4gi5fIwjg\nPersonas alcanzadas: 714 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2022/Desarrollo_y_Gobernabilidad_en_el_contexto_municipal.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Funciones del Instituto Ciudadano de Planeación Municipal (ICIPLAM)\nFecha: Viernes 29 de abril de 2022\nPonente: Alejandro Mendoza Castañeda\nModeradora: Andrea Mena Álvarez\nLink del video: https://www.facebook.com/unachcedes/videos/395937355871674\nLink de youtube: https://www.youtube.com/watch?v=yIj3eQmoBIs\nPersonas alcanzadas: 316 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2022/Funciones_del_Instituto_Ciudadano_de_Planeacin_Municipal_ICIPLAM.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Presentación del Plan Anual de Trabajo de la Coordinación de Desarrollo Económico (ICIPLAM)\nFecha: Viernes 13 de mayo de 2022\nPonente: Silvia del Carmen Bermúdez Castillo\nModerador: Moises Silva Cervantes\nLink del video: https://fb.me/e/2aHaSwAa7\nLink de youtube:  https://www.youtube.com/watch?v=QJamAlYP-Hc\nPersonas alcanzadas: 232 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2022/Presentacin_del_Plan_Anual_de_Trabajo_de_la_Coordinacin_de_Desarrollo_Econmico_ICIPLAM.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Modelo de gestión sustentable en la industria minera de México\nFecha: Viernes 27 de mayo de 2022\nPonente: Rosa Elia Martínez Torres\nModerador: Edgar de Jesús Zamudio Velasco\nLink del video: https://fb.me/e/2ulBHX5j5\nLink de facebook: https://fb.watch/mjCqrWbAwD/\nPersonas alcanzadas: 264 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2022/Modelo_de_gestin_sustentable_en_la_industria_minera_de_Mxico.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Educación y Desarrollo. Una relación esencial\nFecha: Viernes 10 de junio de 2022\nPonente: Hilda María Jiménez Acevedo\nModerador: Rodrigo García Rojas Celorio\nLink del video: https://fb.me/e/3gPMcBcgO\nLink de facebook: https://fb.watch/mjCw0pOo9b/\nPersonas alcanzadas: 328 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2022/Educacin_y_Desarrollo_Una_relacin_esencial.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Elaboración de artículos científicos de primer nivel\nFecha: Viernes 12 de agosto de 2022\nPonente: Alejandro López González\nModerador: Brenda Castañon Villanueva\nLink del video: https://fb.watch/lqW9sIWz1A/\nLink de youtube: https://www.youtube.com/watch?v=ch7Iv5IrU8U\nPersonas alcanzadas: 240 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2022/Elaboracin_de_artculos_cientficos_de_primer_nivel.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Proyectos Comunitarios de Electrificación con Energías Renovables\nFecha: Viernes 26 de agosto de 2022\nPonente: Alejandro López González\nModerador: María Teresa de Jesús Trujillo Olivera\nLink del video: https://fb.watch/lqWK8dDkpe/\nLink de facebook: https://fb.watch/mjCLsN4yML/\nPersonas alcanzadas: 189 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2022/Proyectos_comunitarios.jpg',
                        height: 250,
                      ),
                    ),
		                Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Conversatorio Transparencia y rendición de cuentas\nFecha: Viernes 09 de septiembre de 2022\Ponentes: Cecilia Cadena Inostroza y Emmanuel Nájera de León.\nModerador: Guadalupe Guillén Flores\nLink del video: https://fb.watch/lqY9LuseEl/\nLink de facebook: https://fb.watch/mjDibeNatb/\nPersonas alcanzadas: 321 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2022/Transparecia_y_rendicin_de_cuentas.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Derecho humano a la identidad cultural y territorios indígenas  en América Latina. Acercamiento a la experiencia chilena\nFecha: Martes 04 de octubre de 2022\nPonente: Juan Jorge Faundes Peñafiel\nModerador: Andrea Mena Álvarez\nLink del video: https://fb.me/e/2St0hw4dW\nLink de facebook: https://fb.watch/mjD1URwOZr/\nPersonas alcanzadas: 197 en Zoom',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2022/Derecho_humano.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Propuestas de infraestructuras verdes para disminuir los riesgos ante eventos hidrometeorológicos extremos en Tuxtla Gutiérrez, Chiapas\nFecha: Viernes 28 de octubre de 2022\nPonente: Moisés Silva Cervantes\nModerador: Marisela Guadalupe Salgado Mora\nLink del video: https://fb.me/e/2dgSpzjMI\nLink de facebook: https://fb.watch/mjD9pkZdzL/\nPersonas alcanzadas: 169 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2022/think_tank_numero_13_2022.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Base metodológica para la construcción de indicadores en derechos humanos de la migración de tránsito\nFecha: Viernes 11 de noviembre de 2022\nPonente: Gonzalo Coporo Quintana\nModeradora: Karla Beatriz García Arteaga\nLink del video: https://fb.me/e/2NuSajaJf\nLink de facebook: https://www.facebook.com/watch/?v=1883763698650185\nPersonas alcanzadas: 147 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2022/transito.jpg',
                        height: 250,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //2021
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15, top: 20),
                      child: Text(
                        'Think Tank Webinar Series',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
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
                                'Tema: La Estadística: Ciencia Fundamental en el proceso de Investigación\nFecha: 22 de enero de 2021\nPonente: Óscar Ausencio Carballo Aguilar\nModerador: Javier López Medina\nLink del video: https://fb.watch/3I0QjXB_2X/\nLink de youtube:https://www.youtube.com/watch?v=lo5RziupNRA\nPersonas alcanzadas: 1.7 mil en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/La_Estadstica.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Las matemáticas como herramienta de defensa intelectual\nFecha: 12 de febrero de 2021\nPonente: Claudia Hernández García\nModeradora: Guadalupe Guillén Flores\nLink del video: https://fb.watch/3I0QjXB_2X/\nLink de facebook: https://fb.watch/mjDGHUlWeE/\nPersonas alcanzadas: 448 mil en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/Las_matemticas_como_herramienta_de_defensa_intelectual.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Geoparque Binacional Volcan Tacaná: Proyecto bilateral México-Guatemala\nFecha: 19 de febrero de 2021\nPonente: Jorge Beltrán Vilchis\nModerador: Luis Alfredo Arias Hernández\nLink del video:\nParte 1: https://www.facebook.com/unachcedes/videos/1123736761398422\nParte 2: https://www.facebook.com/unachcedes/videos/719162325306726\nPersonas alcanzadas: 264 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/Geoparque_Binacional_Volcan_Tacan_Proyecto_bilateral_Mxico-Guatemala.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: La estadística y su importancia en la toma de decisiones\nFecha: 26 de febrero de 2021\nPonente: Gustavo Adolfo Andrade Gutiérrez\nModerador: María del Rosario Martínez Álvarez\nLink de facebook: Primera parte: https://fb.watch/mjDSnSxV8S/\nSegunda parte: https://fb.watch/mjDU2UeQR_/\nPersonas alcanzadas: 379 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/La_estadstica_y_su_importancia_en_la_toma_de_desiciones.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: El derecho a vivir una vida libre de violencias en e ámbito universitario. Una mirada desde la perspectiva de género.\nFecha: 05 de marzo de 2021\nPonente: Zedxi Magdalena  Velázquez Fiallo\nModeradora: Ericka Nayely Trujillo López\nLink del video: https://fb.me/e/40daYFrus\nLink de youtube: https://www.youtube.com/watch?v=XnaA1kvaz0M\nPersonas alcanzadas: 1 mil alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/El_derecho_a_vivir_una_vida_libre_de_violencias_en_e_mbito_universitario.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: El estadístico y la estadística del siglo XXI: hacia la Ciencia de datos\nFecha: 12 de marzo de 2021\nPonente: Gerardo Orantes Jordan\nModeradora: Andrea Mena Álvarez\nLink del video: https://www.facebook.com/unachcedes/videos/471160410690969\nLink de youtube: https://www.youtube.com/watch?v=jdxuvSGPjOs\nPersonas alcanzadas: 753 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/El_estadistico.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Mujeres que inspiran: Miriam Carrillo-Barragán\nFecha: 19 de marzo de 2021\nPonente: Miriam Carrillo-Barragán\nModeradora: Tania Benavidez Gómez\nLink de facebook: https://fb.watch/mjE6z6pspK/\nPersonas alcanzadas: 494 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/mujeres_que_inspiran.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Argumentos para incorporar la Perspectiva de Género en las políticas públicas a nivel municipal\nFecha: 09 de abril de 2021\nPonente: Emma del Carmen Aguilar Pinto\nModerador: Artemio Molina Utrilla\nLink de facebook: https://fb.watch/mjEfkxlIG1/\nPersonas alcanzadas: 483 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/flayer_pequeo.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: La licenciatura, el posgrado y las oportunidades. Una mirada desde el CONACYT\nFecha: 23 de abril de 2021\nPonente: Miriam Carrillo-Barragán\nModerador: Andrea Mena Álvarez\nLink del video:https://fb.me/e/bzZEiollF\nLink de facebook: https://fb.watch/mjEmGk46rX/\nPersonas alcanzadas: 389 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/Flyer_Horizontal.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: La Política Exterior de México\nFecha: 30 de abril de 2021\nPonente: Rubén Ramos Muñoz\nModerador: David García Contreras\nLink del video: https://fb.me/e/GIxuXvTG\nLink de youtube: https://www.youtube.com/watch?v=ZesZpP6ImJA\nPersonas alcanzadas: 507 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/La_politica.jpg',
                        height: 250,
                      ),
                    ),
		                Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Instrumentos de Planeación y Evaluación Municipal» (parte 1)\nFecha: 14 de mayo de 2021\nPonente: Rogelio Aguilar Cruz\nModeradora: Reyna del Carmen Alfaro Pérez\nLink de facebook: https://www.facebook.com/unachcedes/videos/337413377897940\nPersonas alcanzadas: 271 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/Instrumentos_de_Planeacin_y_Evaluacin_Municipal_parte_1.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Instrumentos de Planeación y Evaluación Municipal» (parte 2)\nFecha:28 de mayo de 2021\nPonente:Rogelio Aguilar Cruz\nModeradora:Sonia I. Villalobos López\nLink de facebook: https://fb.me/e/dyggKeIN2\nPersonas alcanzadas: 348 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/Flyer_Ho.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Planes municipales: apostando al desarrollo\nFecha: 11 de junio de 2021\nPonente: Magda Elizabeth Jan Argüello\nModerador: Gonzalo Cóporo Quintana\nLink de facebook: https://www.facebook.com/unachcedes/videos/526972328414314\nPersonas alcanzadas: 453 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/Planes_municipales_apostando_al_desarrollo.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Atribuciones legales de los integrantes de los Ayuntamientos de Chiapas\nFecha: 09 de julio de 2021\nPonente: Rogelio Aguilar Cruz\nModerador: Andrea Mena Álvarez\nLink del video: https://www.facebook.com/unachcedes/videos/348664646926170\nLink de youtube: https://www.youtube.com/watch?v=tqScihi4Vug\nPersonas alcanzadas: 419 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/curso.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Retos sociales y Universidad: la migración en la Frontera Sur\nFecha: 27 de agosto de 2021\nPonente: María Elisa García López\nModerador: José Alberto Gordillo Flecha\nLink del video: https://fb.me/e/2ooDUkKGs\nLink de youtube: https://www.youtube.com/watch?v=n38krJ8TTSU\nPersonas alcanzadas: 425 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/Retos_sociales_y_Universidad.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Funciones del secretario Municipal\nFecha: 08 de octubre de 2021\nPonente: Artemio Molina Utrilla\nModeradora: Andrea Mena Álvarez\nLink del video: https://fb.me/e/2wHdXoq8i\nLink de youtube: https://www.youtube.com/watch?v=E56ZGmbRf5E\nPersonas alcanzadas: 679 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/Funciones_del_Secretario_Municipal.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Entrega Recepción y sus efectos en la Rendición de Cuentas\nFecha: 15 de octubre de 2021\nPonente: Neiman Escobar Joachin\nModeradora: Magda Elizabeth Jan Argüello\nLink del video: https://fb.me/e/1TbjNMP55\nLink de youtube: https://www.youtube.com/watch?v=7N8IjwjpdYE\nPersonas alcanzadas: 478 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/entrega_de_recepcion.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Ordenación territorial de cuencas urbanas sujetas a riesgo de inundación\nFecha: 05 de noviembre de 2021\nPonente: Moises Silva Cervantes\nModeradora: Ana Hernando Gallego\nLink del video: https://www.facebook.com/unachcedes/videos/975427846648121\nLink de youtube: https://www.youtube.com/watch?v=1l5bMQjc8d4\nPersonas alcanzadas: 340 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/Ordenacion_territorial.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Sistema Estatal Anticorrupción\nFecha: 12 de noviembre de 2021\nPonente: Dayanhara Aguilar Ballinas\nModeradora: Andrea Mena Álvarez\nLink de facebook: https://www.facebook.com/unachcedes/videos/604160587572469\nPersonas alcanzadas: 950 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/Sistema_nacional_anticorupcion.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Guía Consultiva de Desempeño Municipal\nFecha: 26 de noviembre de 2021\nPonente: Ramón Eloy Cerda Castillo\nModeradora: Blanca Isela Castillejos Suastegui\nPersonas alcanzadas: 950 alcanzadas',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2021/guia_consultiva.jpg',
                        height: 250,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //2020
            ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15, top: 20),
                      child: Text(
                        'Think Tank Webinar Series',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
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
                                'Tema: Sistema de evaluación y acreditación de la educación en Cuba\nFecha: 14 de agosto de 2020\nPonente: Elmys Escribano Hervis\nModerador: Óscar Ausencio Carballo Aguilar\nLink del video: https://www.facebook.com/unachcedes/videos/1167182580308719\nLink de youtube: https://www.youtube.com/watch?v=9I_ohV7j3hE\nPersonas alcanzadas: 1.8 mil en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2020/En_el_marco_del_segundo_congreso_intarnacional.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Defensores municipales de derechos humanos\nFecha: 28 de septiembre de 2020\nPonente: Pedro Sergio Becerra Toledo\nModerador: José Alberto Gordillo Flecha\nLink del video: https://fb.watch/3I0ETIKjd8/\nLink de youtube: https://www.youtube.com/watch?v=fGoUUzDs94I\nPersonas alcanzadas: 8.2 mil en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2020/Defensores_municipales_de_derechos_humanos.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: El profesor universitario frente a la COVID 19: la docencia NO presencial de emergencia\nFecha: 29 de septiembre de 2020\nPonente: Pedro Sergio Becerra Toledo\nModerador: José Alberto Gordillo Flecha\nLink del video: https://fb.watch/3I0ETIKjd8/\nLink de youtube: https://www.youtube.com/watch?v=fGoUUzDs94I\nPersonas alcanzadas: 8.2 mil en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2020/Programa_13_aniversairo_29_de_sept.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Sistema de información geográfica para el desarrollo municipal sostenible. Una visión desde el campo de las energías renovables\nFecha: 30 de septiembre de 2020\nPonente: Javier Domínguez Bravo\nModerador: Moisés Silva Cervantes\nLink del video: https://www.facebook.com/unachcedes/videos/650642879195447\nLink de youtube: https://www.youtube.com/watch?v=BZk8xEl8ims\nPersonas alcanzadas: 1.7 mil en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2020/Sistema_de_informacion_geografica_para_el_desarrollo_municipal_sostenible_Una_vision_desde_el_campo_de_las_energias_renovables.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Problemática de las asociaciones de migrantes de Guatemala\nFecha: 1º de octubre de 2020\nPonente: Dirk Bornschein\nModerador: Julio Guillén Velázquez\nLink del video: https://www.facebook.com/unachcedes/videos/947857499054650\nLink de youtube: https://www.youtube.com/watch?v=7iVpzGX-9Kk\nPersonas alcanzadas: 1.9 mil en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2020/Presentacin_Cartel_01_de_Octubre.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: La definición de problemas públicos: un ejercicio de buen gobierno\nFecha: 2 de octubre de 2020\nPonente: León Ricardo Lizárraga Cubedo\nModeradora: Andrea Mena Álvarez\nLink del video: https://www.facebook.com/watch/live/?ref=watch_permalink&v=1065512313865333\nLink de youtube: https://www.youtube.com/watch?v=MXif6hlUQKU\nPersonas alcanzadas: 1.9 mil en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2020/Programa_13_aniversairo_02_de_Ocubre.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: La Transversalidad de las Políticas Públicas en materia migratoria\nFecha: 16 de octubre de 2020\nPonente: Juan Manuel Arellano Morales\nModerador: Octavio Grajales Castillejos\nLink del video: https://fb.watch/3I0JC0Gj6W/\nLink de youtube: https://www.youtube.com/watch?v=qVW0HCH89HI\nPersonas alcanzadas: 587 mil en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2020/La_Transversalidad_de_las_Polticas_Pblicas_en_materia_migratoria.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Ombudsperson Municipal. Una necesidad en el Estado Mexicano\nFecha: 13 de noviembre de 2020\nPonente: Eliceo Muñoz Mena\nModeradora: Emma del Carmen Aguilar Pinto\nLink del video: https://fb.watch/3I0MXtrfmJ/\nLink de youtube: https://www.youtube.com/watch?v=abQhkDspdW4\nPersonas alcanzadas: 511 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2020/Ombudsperson_Municipal_Una_necesidad_en_el_Estado_Mexicano.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Violencia de Género y Feminicida\nFecha: 27 de noviembre de 2020\nPonente: Zedxi Magdalena  Velázquez Fiallo\nModeradora: Blanca Isela Castillejos Suastegui\nLink del video: https://fb.watch/3I0O8o9anW/\nLink de youtube: https://www.youtube.com/watch?v=OcBuYP79ECM\nPersonas alcanzadas: 2.1 mil en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2020/Violencia_de_Gnero_y_Feminicida.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                                'Tema: Disminución de la cobertura vegetal y su impacto en los riesgos hidrometeorológicos, caso de estudio en Tuxtla Gutiérrez, México\nFecha: 11 de diciembre de 2020\nPonente: Moisés Silva Cervantes\nModeradora: Daisy Escobar Castillejos\nLink del facebook: https://www.facebook.com/unachcedes/videos/2881103812144605\nPersonas alcanzadas: 328 en Facebook',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/webinars/2020/ded.jpeg',
                        height: 250,
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

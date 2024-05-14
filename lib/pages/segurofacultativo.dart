import 'package:flutter/material.dart';
import 'home_screen.dart';

class SeguroFacultativo extends StatelessWidget {
  const SeguroFacultativo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Seguro Facultativo'),
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
                  Tab(text: 'Seguro Facultativo'),
                  Tab(text: 'Funciones y actividades'),
                  Tab(text: 'Objetivo'),
                  Tab(text: 'Elementos básicos de la tutoría '),
                  Tab(text: 'Liga IMSS, para solicitar NSS'),
                  Tab(text: 'Contacto'),
                ],
              ),
            ),
          ),
        ),
        ),
        body: TabBarView(
          children: [
            //SEG FAC
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15, top: 25),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'El Seguro Facultativo para Estudiantes es un esquema de aseguramiento médico que otorga el IMSS de forma gratuita a las y los estudiantes de las instituciones públicas de los niveles medio superior, superior y posgrado. A partir del 2016 por mandato presidencial, los números de afiliación para estudiantes pasan de ser números convencionales a números ordinarios para garantizar su derecho a la salud y la seguridad social.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
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
            //FUNCIONES
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15,top: 25.0),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Funciones:',
                              textAlign: TextAlign.start,
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
                      padding: EdgeInsets.only(bottom: 35.0, left: 15, top: 25),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Altas de los alumnos al régimen ordinario de seguridad social IMSS y las bajas correspondientes.\nValidar todas las solicitudes de becas que los estudiantes realicen su trámite inicial de todas las altas y bajas de incorporación al IMSS y la integración de la documentación y envío a oficinas centrales para su trámite al IMSS.',
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
                      padding: EdgeInsets.only(bottom: 20.0, left: 15,top: 25.0),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Actividades:',
                              textAlign: TextAlign.start,
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
                      padding: EdgeInsets.only(bottom: 35.0, left: 15, top: 25),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Altas generales\nAltas individuales\nBajas\nAtender de forma continua las solicitudes de altas  de los alumnos y alumnas del centro de estudios para el desarrollo municipal y políticas públicas para el trámite de su afiliación al seguro facultativo que la UNACH oferta para la institución médica IMSS.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
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
            //OBJETIVO
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15,top: 25.0),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Objetivo:',
                              textAlign: TextAlign.start,
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
                      padding: EdgeInsets.only(bottom: 35.0, left: 15, top: 25),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Tramitar la afiliación de las personas aspirantes, estudiantes presenciales y a distancia (Profesional superior universitario, licenciatura, maestría y doctorado) al régimen de seguro facultativo modalidad Números Ordinarios, con la incorporación de los Número de Seguridad Social (NSS) para que puedan tener acceso al servicio médico del IMSS.\n\nLo primero que debes hacer como alumno es obtener tu Número de Seguridad Social (NSS), que es para toda la vida. Es muy sencillo y tienes tres alternativas para hacerlo:\n1. Web www.imss.gob.mx: Utiliza el trámite de asignación o localización del Número de Seguridad Social. Para ello necesitas tener a la mano CURP, comprobante de domicilio y correo electrónico.\n2. App: Descarga la App IMSS Digital en tu celular, ó consúltala desde el sitio web https://www.imss.gob.mx/imssdigital y genéralo en la sección de trámites y servicios. También necesitas tu CURP, comprobante de domicilio y correo electrónico.\n\nNota: Después de generarlo deberás enviarlo al correo del enlace de Seguro Facultativo para proceder a tu alta.\n\n3. IMPORTANTE: Si cuentas con IMSS por parte de tu trabajo debes generar en la misma plataforma antes mencionada una Constancia de vigencia de derechos, la cual enviaras a tu enlace de Seguro Facultativo.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
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
            //ELEMENTOS
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15,top: 25.0),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Actividades del responsable del area',
                              textAlign: TextAlign.start,
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                      child: Image.asset(
                        'assets/tablatutoria.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //Liga
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15,top: 25.0),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Liga IMSS, para solicitar NSS',
                              textAlign: TextAlign.start,
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
                      padding: EdgeInsets.only(bottom: 35.0, left: 15, top: 25),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'https://serviciosdigitales.imss.gob.mx/gestionAsegurados-web-externo/vigencia',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
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
            //CONTACT
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15,top: 25.0),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Contacto',
                              textAlign: TextAlign.start,
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
                      padding: EdgeInsets.only(bottom: 35.0, left: 15, top: 25),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Mtra. Edit del Socorro García Abadía\nResponsable del área de Becas del CEDES\nCel: 961 136 5683\nCorreo: edit.garcia@unach.mx',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
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

import 'package:flutter/material.dart';
import 'home_screen.dart';

class Becas extends StatelessWidget {
  const Becas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Becas'),
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
                  Tab(text: 'Becas'),
                  Tab(text: '¿Qué hacemos?'),
                  Tab(text: 'Contacto'),
                ],
              ),
            ),
          ),
        ),
        ),
        body: TabBarView(
          children: [
            //BECAS
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
                              'Esta área se encarga de la atención y apoyo a estudiantes en la solicitud de becas entre otros servicios de vinculación y extensión para apoyo del universitario.',
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
                              '¿Quiénes somos?',
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
                      padding: EdgeInsets.only(bottom: 20.0, left: 15, top: 25),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'El área de becas de la SIRESU, se encarga de apoyar en los tramites de gestión de becas económicas para la continuación de estudios que emiten diversas Instituciones Públicas y Privadas, se cuenta con una red de responsables de becas capacitados en cada una de las Unidades Académicas',
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
                              'Propósito',
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
                      padding: EdgeInsets.only(bottom: 20.0, left: 15, top: 25),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Evitar la deserción escolar de alumnos de nivel licenciatura mediante la gestión de solicitudes de becas y estímulos que permitan la continuación y/o culminación de sus estudios, a través de la difusión de diversas convocatorias en todas las sedes académicas.',
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
            //QUE HACEMOS
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 35.0, left: 15, top: 25),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'El Centro de Estudios para el Desarrollo Municipal y Políticas Públicas cuenta con área de Becas teniendo como:\n1.- Búsqueda y Difusión de Convocatorias.\n2.- Gestión de Solicitudes y Asesoría en el Proceso.\n3.- Seguimiento a las Solicitudes\n\nEl Área de Becas como un proceso continuo de acompañamiento que va desde su ingreso, permanencia y egreso, ayudando a contribuir con la formación de los estudiantes y evitar el rezago educativo. Concluir satisfactoriamente sus estudios profesionales, coadyuva a disminuir el índice de reprobación, rezago, deserción, entre otros; mediante los subprogramas y dimensiones de atención.',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                      child: Image.asset(
                        'assets/subprogramas.png',
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

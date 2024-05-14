import 'package:flutter/material.dart';
import 'home_screen.dart';

class CentroEvaluador extends StatelessWidget {
  const CentroEvaluador ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          title: const Text('Centro Evaluador'),
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
                    Tab(text: 'Beneficios de la Certificación'),
                    Tab(text: 'Capacitación y Certificación'),
                    Tab(text: 'Noticias y Eventos de interés'),
                    Tab(text: 'Asesoría y Consultoría'),
                    Tab(text: 'Estándares Acreditados'),
                    Tab(text: 'Glosario CONOCER'),
                    Tab(text: 'Contacto'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            //BENEFICIOS
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Centra los elementos horizontalmente
                        children: [
                          Expanded(
                            child: Center(
                              child: Image.network(
                                'https://cedes.unach.mx/images/Logotipo-Red-Conocer.png',
                                height: 80,
                              )
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Image.network(
                                'https://cedes.unach.mx/images/CEDES-color-oficial_transp.png',
                                height: 150,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Image.network(
                                'https://cedes.unach.mx/images/logo_unach_p_fondo_negro.png',
                                height: 150,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                      child: Text(
                        'Registro como Centro Evaluador ante \nCONOCER: CE0037 – ECE337 -18',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          ),
                        textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'CENTRO EVALUADOR CEDES UNACH',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Somos un Centro de Evaluación de Competencias Laborales donde impulsamos la profesionalización del capital humano en sectores como:',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.start,
                            text: const TextSpan(
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'Administración Pública Municipal',
                                  style: TextStyle(fontWeight: FontWeight.bold)
                                ),
                                TextSpan(
                                  text: ' Actualmente se trabaja en las funciones prioritarias de un Ayuntamiento:',
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '- Secretaría del Ayuntamiento',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '- Obras Públicas municipales',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '- Tesorería',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '- Área de planeación',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '- Contraloría',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '- Servicios Públicos',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '- Organismo operador de agua y alcantarillado',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '- Seguridad Pública',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '- Urbanismo',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '- Unidad de Protección Civil',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Sector de Educacion y Formacion de Personas',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '- Competencias básicas en TIC: Excel, Word, PowerPoint',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  '- Competencias docentes ',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Wrap(
                              alignment: WrapAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Sector Productivo',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '- Habilidades genéricas',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      '- Perspectiva de género',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Wrap(
                              alignment: WrapAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Beneficios:',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '- Integración al mercado laboral de manera exitosa',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      '- Ventaja competitiva',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      '- Reconocimiento laboral y social',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      '- Brindamos servicios de capacitación, certificación y consultoría a nivel nacional en Competencia Laboral.',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //CAPACITACION
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/Personal_Centro_Evaluador.jpg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'El Proceso de Certificación consiste en garantizar que un individuo cuenta con los conocimientos, habilidades y destrezas necesarias para desempeñar eficientemente una función laboral con base en los lineamientos que describe el Estándar de Competencia correspondiente.',
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
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/procesoevaluacion.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Competente: se otorga el certificado.\n\nAún no competente: se analizan las causas y se ofrecen las opciones de capacitación que le podrían conducir en el futuro a tener éxito en la evaluación',
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
            //NOTICIAS
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Evaluación EC0076',
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
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/EC076/p1grjbakom10j51rdku0u2v418uv7.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/EC076/p1grjbakom1g7c10ji9mh17lonc16.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/EC076/p1grjbakomdcng9boogrg7gcv4.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/EC076/p1grjbakoms4j1nab1mih1sus16o85.jpeg',
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Curso de Capacitación EC0217.01',
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
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/Cursodecapacitacion/p1grjb1p551mdb16q31vsj1t9712in5.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/Cursodecapacitacion/p1grjb1p551rg2lpa1v21rgq9l94.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/Cursodecapacitacion/p1grjb1p551rk268r19mhmjvlm26.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/Cursodecapacitacion/p1grjb1p553kt1f3p1r0fprmf0s7.jpeg',
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Evaluación EC0217.01',
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
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/EC021701/p1grjb5dh3eot1elv90315vq19fd4.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/EC021701/p1grjb5dh3jm1cb3145g1s901qvc5.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/EC021701/p1grjb5dh3k5u1h818e1g341isj6.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/EC021701/p1grjb5dh418eg123jtqe1sb41cd97.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/EC021701/p1grjb5mi011cr1t00hc011i41jbo8.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/EC021701/p1grjb5mi0163d638rjqeem1le19.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/EC021701/p1grjb5mi0gt21rto11ig1f5c98db.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/EC021701/p1grjb5mi0mhu1fh31nb81kfmnsha.jpeg',
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //ASESORIA
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Asesoría en capacitación y certificación de acuerdo al perfil del participante, giro de la organización y objetivos que deseen alcanzar.',
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
                      padding: const EdgeInsets.only(top: 25.0, left: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Sesión de transferencia  de conocimiento  de la Entidad de Certificación al Centro Evaluador CEDES UNACH',
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
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/sesiondetranferencia/p1fvebc7bm11ltaaf8c21hlv1nbn6.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/sesiondetranferencia/p1fvebc7bm1stbv6s1c93h851pvs4.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/sesiondetranferencia/p1fvebc7bm1v501q2gl336fugk5.jpeg',
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Taller de actualización EC0217.01  Impartición de cursos de manera presencial grupal',
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
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/tallerdeactualizacion/p1fvebjkch55ifsjlthbof1mpk5.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/tallerdeactualizacion/p1fvebjkchchb12hm1uhs1lq314oe4.jpeg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/tallerdeactualizacion/p1fvebjkci1hmvrqk12s9anv1ou56.jpeg',
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //ESTANDARES
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 15),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          const Text(
                            'EC0217.01\nImpartición de cursos de manera presencial grupal\n\nEC0076\nEvaluación de la competencia con base en estándares de competencia',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //GLOSARIO
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 15),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          const Text(
                            'Carpeta de investigación: Conjunto de registros de investigación realizada por el fiscal de la causa con el objetivo de acreditar la comisión de un delito.\n\nCentro de Evaluación: Persona moral, organización o institución pública o privada, unidad administrativa de alguna Dependencia, Entidad o su similar en los niveles de gobierno Federal, Estatal o Municipal, autorizada por el CONOCER a propuesta de una Entidad de Certificación y Evaluación de Competencias o por un Organismo Certificador acreditado por el CONOCER, para evaluar, con fines de certificación, las competencias de las personas con base en un determinado Estándar de Competencia inscrito en el Registro Nacional de Estándares de Competencia. Tratándose de instituciones educativas u otro tipo de organismos públicos o privados, con más de un plantel, se podrán acreditar como Centros de Evaluación sus diferentes planteles.\n\nCertificación de Competencias: Reconocimiento con Validez nacional y oficial de la competencia demostrada por una persona, independientemente de la forma en que la haya adquirido, en un proceso de evaluación realizado con base en un Estándar de Competencia inscrito en el Registro Nacional de Estándares de Competencia.\n\nEntidad de Certificación y Evaluación o ECE: Persona moral, organización o institución pública o privada, unidad administrativa de alguna Dependencia, Entidad o su similar en los niveles de Gobierno Federal, Estatal o Municipal, acreditada por el CONOCER para capacitar, evaluar y/o certificar las competencias laborales de las personas, con base en Estándares de Competencia inscritos en el Registro Nacional de Estándares de Competencia, así como para acreditar, previa autorización del CONOCER, Centros de Evaluación y/o Evaluadores Independientes en uno o varios Estándares de Competencia, inscritos en el Registro Nacional de Estándares de Competencia en un periodo determinado.\n\nEstándar de competencia: Norma Técnica de Competencia. Es el documento oficial aplicable en toda la República Mexicana que servirá como referente para evaluar y certificar la competencia de las personas y que describirá en términos de resultados, el conjunto de conocimientos, habilidades, destrezas y actitudes a que alude el artículo 45 de la Ley General de Educación y que requiere una persona para realizar en el mercado de trabajo con un alto nivel de desempeño.\n\nEvidencia Histórica o EH: Productos, documentos o registros que ha generado el Candidato como resultado de su trabajo. La característica principal de una Evidencia Histórica es que fue.\n\nInstrumento de Evaluación de Competencia o IEC: Documento en el que se establecen los mecanismos que permiten determinar si una persona es competente o todavía no, en una competencia referida a un Estándar de Competencia inscrito en el Registro Nacional de Estándares de Competencia.\n\nOrganismo Certificador o OC: Persona moral, organización o institución pública o privada, unidad administrativa de alguna Dependencia, Entidad o su similar en los niveles de gobierno Federal, Estatal o Municipal, acreditada por el CONOCER para certificar las competencias laborales de las personas, con base en Estándares de Competencia inscritos en el Registro Nacional de Estándares de Competencia, así como para acreditar, previa autorización del CONOCER, Centros de Evaluación y/o Evaluadores Independientes en uno o varios Estándares de Competencia, inscritos en el Registro Nacional de Estándares de Competencia, durante un periodo determinado.\n\nPortafolio de evidencias: Compilación de evidencias y registros que documentan un proceso de evaluación de competencias.\n\nValidez de Evidencia Histórica: Una Evidencia Histórica es válida cuando corresponde a una o varias evidencias de producto establecidas en el Estándar de Competencia a evaluar y cubre los criterios y las características establecidas en el IEC.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //CONTACTO
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              '#ElijocertificarmeconCEDES\n\nTus conocimientos, habilidades, destrezas y actitudes son muy valiosos, dan solides al trabajo que realizas diariamente, pero, puedes darles un plus con la Certificación Laboral.',
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
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                      'https://www.cedes.unach.mx/images/Portada_3_Acortado.png',
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

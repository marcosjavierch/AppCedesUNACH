import 'package:flutter/material.dart';
import 'home_screen.dart';

class GDM extends StatelessWidget {
  const GDM ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          title: const Text('Guía para el Desempeño Municipal'),
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
                    Tab(text: 'Guía para el Desempeño Municipal'),
                    Tab(text: 'Acerca de'),
                    Tab(text: 'Objetivos'),
                    Tab(text: 'El papel de las Instituciones de Educación Superior en la ADM'),
                    Tab(text: 'La UNACH en el programa Guía de Desempeño Municipal'),
                    Tab(text: 'Principales Beneficios al Implementar el Programa de la GDM a los Municipios'),
                    Tab(text: 'Participación del CEDES en la Guía de Desempeño Municipal'),
                    Tab(text: 'Fotos GDM'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            //GMD INDEX
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
                            'La implementación de la Guía Consultiva de Desempeño Municipal (GDM) se realiza en coordinación con los Organismos Estatales de Desarrollo Municipal e Instituciones de Educación Superior, y con una estrecha vinculación con las dependencias y entidades de la administración pública federal y organismos autónomos.\n\n En su diseño la Guía se compone de ocho módulos que abarcan grandes rubros de responsabilidad municipal: Organización, Hacienda, Gestión del territorio, Servicios públicos, Medio ambiente, Desarrollo social, Desarrollo económico y Gobierno abierto.\n\n Estos se desagregan en 31 temas y 132 indicadores de gestión (96) que establecen los puntos elementales con que debe contar toda administración municipal, y de desempeño (36) que miden el avance a través de resultados. La participación de los municipios es voluntaria y se formalizar a través de un Acta de Cabildo y la designación de un enlace por el Presidente o Presidenta Municipal.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Image.network(
                              'https://t.ly/i5wmY',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15, bottom: 20),
                            child: Text(
                                'En la primera etapa denominada Diagnóstico, los municipios deben llenar cada uno de los indicadores que integran la Guía. La Revisión, o segunda etapa, consiste en la revisión de los avances reportados por los municipios por alguna de las instituciones de educación superior que colaboran. \n\nDesde su creación, la GDM cuenta con los mecanismos para llevar a cabo la implementación a distancia, en donde el uso de las tecnologías de la información resulta fundamentales al momento apoyar el fortalecimiento de los municipios, dando pauta a que las instituciones de educación superior puedan continuar colaborando con el mismo rigor que de manera presencial.',
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //ACERCA DE
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
                            'La Guía de Desempeño Municipal (GDM), es una herramienta de evaluación (revisión) que mide a las administraciones municipales a partir de dos dimensiones: por un lado, la Gestión, entendida como el conjunto de procesos y actividades básicas para el funcionamiento interno del aparato administrativo; y, por el otro, el Desempeño, entendido como los resultados alcanzados por el gobierno municipal de acuerdo con las funciones derivadas del mandato legal del Art. 115 constitucional y a las expectativas ciudadanas.\n\nLa Guía de Desempeño Municipal es un programa del gobierno de la república dependiente de la Secretaría de Gobernación (SEGOB) que a través del Instituto Nacional para el Federalismo y el Desarrollo Municipal (INAFED) implementa en todo el país para aquellos municipios que deseen participar en dicho programa.',
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
            //OBJETIVOS
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
                            'El objetivo general de la GDM es: fortalecer las capacidades institucionales de los municipios a partir de un Diagnóstico de la Gestión, así como la Evaluación del Desempeño de sus funciones constitucionales con el fin de contribuir al desarrollo y mejora de la calidad de vida de la población.\n\nLos objetivos de este programa son parte del nuevo modelo de atención del INAFED: la Guía Consultiva de Desempeño Municipal (GDM), que tiene 3 propósitos fundamentales:\n1. Orientar a las administraciones municipales durante su periodo de gobierno a fin de mejorar y consolidar sus capacidades institucionales.\n2. Alentar la mejora continua de la gestión y el desempeño de los gobiernos municipales.\n3. Impulsar las buenas prácticas y promover una cultura de evaluación que permita establecer metas y medir resultados.',
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
            //PAPEL DE INST
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
                            'Las Instituciones de Educación Superior acreditadas ante el programa tienen la encomienda de revisión los resultados reportados en el autodiagnóstico municipal, siguiendo la metodología dispuesta por el programa. Aunado a lo anterior, pueden jugar un papel destacado en la asesoría y asistencia técnica a los municipios a fin de que éstos emprendan acciones de mejora en su gestión administrativa y en su desempeño institucional, para beneficio de su población.\n\nLa revisión está a cargo de las instituciones de educación superior que colaboran de manera voluntaria en el programa, siguiendo las acciones que a continuación se describen:\n1. Las instituciones de educación superior interesadas en participar en el programa como instancias revisoras deberán formalizar su intención mediante un oficio dirigido al OEDM. Adicionalmente, designaran un enlace institucional para establecer comunicación con el OEDM y con el INAFED.\n2. La institución de educación superior revisará las evidencias presentadas por el municipio con el fin de determinar la situación de cada uno de los indicadores establecidos por la GDM, para tal efecto:\na. Revisara los documentos de evidencia presentados por el municipio, verificando que éstos sustenten los elementos y requisitos establecidos en la Guía.\nb. Realizará visitas aleatorias de inspección física a los sitios e instalaciones utilizados para la prestación de los servicios públicos municipales.\nc. Replicara la encuesta de calidad de los servicios públicos, de acuerdo con la metodología establecida por el INAFED.\nd. Elaborará y firmara el dictamen de revisión, incluyendo la minuta y el reporte de revisión con los resultados obtenidos, así como los formatos considerados por la metodología de la Guía.\ne. Capturará los resultados de la verificación en el SIADEM. Esta actividad es indispensable para que el INAFED procese la información definitiva y acredite los resultados municipales.',
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
            //PROGRAMA DE DESEMPEÑO
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
                            'Al principio en el programa Agenda Desde lo Local, la participación de la UNACH era totalmente única ya que eran pocos municipios los que se inscribían en el programa, con el transcurrir del tiempo se fueron sumando más municipios al programa y se tuvo la necesidad de invitar a mas Institutos de Estudios Superiores para alivianar la carga de municipios a la Universidad Autónoma de Chiapas y también para contribuir con el desarrollo municipal.\n\nPara el periodo 2017 se inscribieron 43 municipios del estado de los cuales la UNACH verifico 15 Ayuntamientos, y los 28 restantes estuvieron evaluados por distintas universidades e institutos públicos y privados como Universidad de Ciencias y Artes de Chiapas, Universidad Politécnica de Tapachula, Universidad de los Altos de Chiapas, Universidad Valle del Grijalva, Universidad Mesoamericana de San Cristóbal de Las Casas, Universidad de Ciencia y Tecnología Descartes S.C., Universidad Linda Vista, el Instituto de Estudios Superiores de Chiapas Plantel Cintalapa, el Instituto Tecnológico de Tapachula, el Instituto Tecnológico Superior de Cintalapa, el Instituto Tecnológico de Tuxtla Gutiérrez y el Instituto de Estudios Superiores Metropolitano.\n\nDesde 2011 a la fecha, la UNACH a través del Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES), ha colaborado en el programa GUIA CONSULTIVA DE DESEMPEÑO MUNICIPAL GDM, antes llamado Agenda desde lo Local, posteriormente Agenda para el Desarrollo Municipal, y actualmente con el nombre arriba mencionado. Este programa de la Secretaría de Gobernación, que impulsa el Instituto Nacional para el Federalismo y el Desarrollo Municipal (INAFED) cuyo objetivo es propiciar el desarrollo integral de los municipios, al fortalecer las capacidades de gestión de los gobiernos municipales mediante la cooperación y la corresponsabilidad entre los tres órdenes de gobierno.\n\nLa Guía de Desempeño Municipal (GDM), es una herramienta de evaluación que mide a las administraciones municipales a partir de dos dimensiones:\n1. La Gestión, entendida como el conjunto de procesos y actividades básicas para el funcionamiento interno del aparato administrativo; y\n2. El Desempeño, entendido como los resultados alcanzados por el gobierno municipal de acuerdo con las funciones derivadas del mandato legal y las expectativas ciudadanas.',
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
            //BENEFICIOS
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
                              'Principales Beneficios al implementar el Programa de la GDM a los Municipios',
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
                      padding: const EdgeInsets.only(top: 25.0, left: 15),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          const Text(
                            'A. Conocer el estado que guarda su administración.\nB. Contar con un diagnóstico actualizado de los principales temas de la agenda de Gobierno.\nC. Focalizar los esfuerzos del gobierno municipal en las funciones y servicios públicos que la Constitución les encomienda.\nD. Diseñar acciones especificas para la atención de áreas de oportunidad y rezago\nE. Priorizar la aplicación de sus recursos de acuerdo con las necesidades detectadas.\nF. Documentar y sistematizar las acciones de gobierno.\nG. Generar espacios para la participación de diversos actores sociales.\nH. Alentar la coordinación de acciones con otros municipios, con el gobierno estatal, el Gobierno de la República, las IES y la sociedad en general.\nI. Medir la gestión del personal de la administración municipal.\nJ. Evaluar objetivamente los resultados del gobierno municipal en su conjunto, a través de Indicadores cuantitativos que miden la eficiencia, eficacia y calidad de las acciones realizadas.\nK. Ser reconocido en foros nacionales e internacionales, por las buenas prácticas realizadas.',
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
            //PARTICIPACION
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
                              '2020 - 2021',
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
                      padding: const EdgeInsets.only(top: 25.0, left: 15),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          const Text(
                            '2020 Con la nueva Coordinadora General del CEDES, la Dra. Andrea Mena Álvarez, se revisaron 11 municipios: Acala, Amatenango del Valle, Berriozábal, Chiapa de Corzo, Comitán, Montecristo de Guerrero, Motozintla, Tapachula, Totolapa, Villaflores y Yajalon. Cabe señalar que esta revisión fue sui generis, ya que por primera vez se realizo en línea (virtual).',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/P1012169.jpg',
                        width: 350,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 15),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          const Text(
                            '2021 Para el presente ejercicio fiscal, al Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES) de la UNACH, le asignaron 10 municipios: Soyaló, Suchiapa, Suchiate, Sunuapa, Tapachula, Tapalapa, Tapilula, Tuxtla Gutiérrez, Villaflores y Motozintla; que fueron los que se revisaron por parte de docentes y personal administrativo.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                        'https://www.cedes.unach.mx/media/k2/items/cache/b8292acafd72142128a3481ac4b0abff_XL.jpg',
                        width: 350,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/P1012178.jpg',
                        width: 350,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15,top: 25.0),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Antecedentes',
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
                      padding: const EdgeInsets.only(top: 25.0, left: 15),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          const Text(
                            '2011 El CEDES superviso los municipios de Cintalapa y Tuxtla Gutiérrez.\n\n2012 El Centro de Estudios para el Desarrollo Municipal y Políticas Publicas supervisa a los municipios de Tuxtla Gutiérrez y Cintalapa.\n\n2013 Para este año el CEDES incrementa a 3 el número de verificaciones con los municipios de Cintalapa, Chicomuselo y Jiquipilas.\n\n2014 En este año solamente se verifica el municipio de Cintalapa.\n\n2015 Se verifico solamente a Tuxtla Gutiérrez, ya que fue el único municipio que participo.\n\n2016 En este año se incrementó exponencialmente el número de verificaciones a trece de 22 municipios inscritos en el programa: Chapultenango, Reforma, Ixtapangajoya, Solosuchiapa, Ixtacomitán, Pichucalco, Ixhuatán, Juárez, Tapilula, Ostuacán, Simojovel, Tuxtla Gutiérrez y Las Rosas.\n\n2017 Se verificaron quince de 43 municipios inscritos con la participación conjunta de las Escuelas y Facultades de la UNACH de Comitán, San Cristóbal de las Casas y Arriaga: estos municipios fueron: Tuxtla Gutiérrez, Chiapa de Corzo, Tila, Sabanilla, Salto de Agua, Arriaga, Pijijiapan, Reforma, Sunuapa, Juárez, San Cristóbal de las Casas, Tenejapa, Las Rosas, Tzimol y Comitán.\n\n2018 Se verificó 4 municipios que se inscribieron: Tuxtla Gutiérrez, Salto de Agua, Copainalà y Chiapa de Corzo.\n\n2019 En este año se revisaron 5 municipios: Chicoasen, Nicolás Ruiz, Osumacinta, Tecpatan y Tuxtla Gutiérrez.',
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
            //FOTOS GDM
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/GDMAcala/WhatsApp-Image-2020-09-17-at-10.02.04-AM-1.jpeg',
                        width: 350,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/GDMAcala/WhatsApp-Image-2020-09-17-at-10.02.04-AM-2.jpeg',
                        width: 350,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/GDMAcala/WhatsApp-Image-2020-09-17-at-10.02.04-AM-3.jpeg',
                        width: 350,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/GDMAcala/WhatsApp-Image-2020-09-17-at-10.02.05-AM-1.jpeg',
                        width: 350,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/GDMAcala/WhatsApp-Image-2020-09-17-at-10.02.05-AM-3.jpeg',
                        width: 350,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/GDMAcala/WhatsApp-Image-2020-09-17-at-10.02.05-AM-4.jpeg',
                        width: 350,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/GDMAcala/WhatsApp-Image-2020-09-17-at-10.02.05-AM.jpeg',
                        width: 350,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/GDMAcala/WhatsApp-Image-2020-09-17-at-10.04.25-AM.jpeg',
                        width: 350,
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

import 'package:unachcedes/widgets/tabla_legislacion.dart';
import 'package:unachcedes/widgets/tabla_sitios_interes.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class AcercaDe extends StatelessWidget {
  const AcercaDe({Key? key}) : super(key: key);

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
      length: 15,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Acerca de'),
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
                    Tab(text: 'Informes'),
                    Tab(text: 'Mision y visión'),
                    Tab(text: 'Historia'),
                    Tab(text: 'Atribuciones'),
                    Tab(text: 'Objetivos'),
                    Tab(text: 'Organización'),
                    Tab(text: 'Ubicación'),
                    Tab(text: 'Identidad'),
                    Tab(text: 'Modelo Educativo UNACH'),
                    Tab(text: 'Legislación'),
                    Tab(text: 'Protocolos'),
                    Tab(text: 'Acerca de UNACH'),
                    Tab(text: 'Coordinacion General'),
                    Tab(text: 'Plan de mejora continua 2020-2024'),
                    Tab(text: 'Sitios de interés'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ///INFORMES
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://cedes.unach.mx/images/primerinformecedes-1.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("cedes.unach.mx/informe/");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Ver informe uno"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                              "cedes.unach.mx/images/2023/2_Informe.pdf");
                        },
                        child: Image.network(
                          'https://cedes.unach.mx/images/2do_informe_2.png',
                          height: 250,
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            _launchURL(
                                "cedes.unach.mx/images/2023/3_Informe.pdf");
                          },
                          child: Image.network(
                            'https://cedes.unach.mx/images/informeportada2023.png',
                            height: 250,
                          ),
                        )),
                  ],
                ),
              ],
            ),
            ///MISION Y VISION
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'NUESTRA MISIÓN',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
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
                              'Es el órgano académico de la Universidad Autónoma de Chiapas, cuya actividad docente, de investigación y extensión está orientada a contribuir al mejoramiento del nivel de desarrollo de los municipios del estado de Chiapas, principalmente aquellos con menor índice de Desarrollo Humano.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'NUESTRA VISIÓN',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Ser un órgano académico con programas educativos acreditados, procesos administrativos certificados y cuerpos académicos consolidados, integrado a redes de colaboración con ayuntamientos municipales, universidades nacionales e internacionales y demás actores del desarrollo.',
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
              ),
            ),
            ///HISTORIA
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'NUESTRA HISTORIA',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15, right: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'El Centro de Estudios para el Desarrollo Municipal y Políticas Públicas surgió como una propuesta de la comunidad universitaria dentro del Seminario Universidad para el Desarrollo en el marco de la integración del Proyecto Académico 2006–2010. Se propuso como una estrategia para la extensión del conocimiento y apoyo a los municipios de la entidad. Por ello, el 1° de octubre del 2007 se emite el Acuerdo de Creación del Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES), como una Dependencia Académica Universitaria, hoy Centro de Estudios, para consolidar las funciones y objetivos de la Universidad, conforme a los artículos 9 de la Ley Orgánica y 10 del Estatuto General, respectivamente, con sede en la ciudad de Tuxtla Gutiérrez, Chiapas (Acuerdo, artículo1°).\n\nEl primer antecedente del cedes, proviene de los esfuerzos de la Universidad Autónoma de Chiapas (UNACH) por impulsar, desde su quehacer fundamental, el desarrollo local y el bienestar colectivo, reconociendo al municipio como el referente obligado para vincular la realidad social con las capacidades y conocimientos generados en el aula.\n\nEstos esfuerzos que desde la investigación y la extensión ya venía realizando la UNACH, se consolidaron con la incorporación del Centro de Vinculación para el Desarrollo Municipal al Proyecto Académico 2006-2010, dentro del Seminario Universidad y Desarrollo, como un proyecto especial orientado a “… impulsar el desarrollo de los 10 municipios en los que tiene presencia la Universidad, a partir del fortalecimiento del modelo de gestión, el impulso a su economía con sustentabilidad, rescate y conservación de sus rasgos socioculturales”. (Estrada Arévalo, 2007)\n\nDe esta manera, se puso en marcha un despliegue de funciones, proyectos y actividades, orientados a contribuir a la expansión del bienestar y el desarrollo municipal, a través de una propuesta académica vinculada a la gerencia social y a la creación de redes de colaboración interinstitucional en la que convergieron todos estos esfuerzos.\n\nFue así como en octubre de 2007 nació formalmente el cedes, como una institución orientada al estudio del desarrollo municipal y las políticas públicas, incorporando a la oferta educativa en la modalidad virtual, el programa de la Licenciatura en Gerencia Social.\n\nEn 2008 se iniciaron los trabajos para el desarrollo de los programas educativos de la Licenciatura en Desarrollo Municipal y Gobernabilidad (LDMYG), la Licenciatura en Seguridad de Poblaciones Humanas ante Desastres (LSPHD) y la Licenciatura en Estadística y Sistemas de Información (LESI), las cuales se pusieron en marcha en el ciclo agosto-diciembre de 2009.\n\nEn 2010, el programa educativo de la LSPHD, se desincorporó del CEDES y se integró al Centro Mesoamericano de Estudios en Salud Pública y Desastres (CEMESAD), pero ese mismo año, el CEDES inició los trabajos para el diseño y posterior autorización de los programas de estudio correspondientes a las maestrías en Prospectiva y Estudios Estratégicos (MPYEE) y en Cooperación Internacional y Desarrollo en América Latina y el Caribe (MCIDALC), en la modalidad escolarizada.\n\nTambién en 2010, el CEDES se integró a la Dependencia de Educación Superior (DES) conocida como Centros Universitarios para el Desarrollo (DES-CUDES), a la que están integrados el Centro de Estudios para la Construcción de la Ciudadanía y la Seguridad (CECOCISE), el Centro Universidad Empresa (CEUNE) y el Instituto de Estudios Indígenas (IEI).\n\nHoy en día la perspectiva del CEDES camina hacia la consolidación de sus programas académicos, el fortalecimiento de su vinculación con la realidad social y su proyección en el ámbito nacional e internacional como espacio de vanguardia.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ///ATRIBUCIONES
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'ATRIBUCIONES',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'I. Impartir enseñanza superior con equidad, calidad y pertinencia en los niveles profesional asociado, licenciatura y posgrado en diversas modalidades —escolarizada, semiescolarizada, virtual, abierta y a distancia—;\n\nII. Impartir formación continua para la capacitación y certificación de competencias profesionales de actores del desarrollo municipal;\n\nIII. Realizar investigación científica básica y aplicada, estudios, planes, programas y proyectos de desarrollo territorial en los ámbitos regional, municipal, micro regional y local;\n\nIV. Definir sus propias líneas de investigación, que respondan a la realidad y problemática del desarrollo municipal;\n\nV. Promover y organizar actividades de difusión, divulgación y socialización, del conocimiento científico y tecnológico para el desarrollo municipal;\n\nVI. Colaborar con las instituciones públicas y organizaciones privadas y sociales, en el marco de las políticas públicas y a través de la vinculación, en el estudio y formulación de planes, programas, proyectos y acciones orientadas al desarrollo municipal, prioritariamente de población con menores índices de desarrollo humano;\n\nVII. Proporcionar consultoría y asesoría técnica a los actores del desarrollo municipal en la planeación, evaluación y gestión social e institucional de proyectos de desarrollo social, tecnológico, económico, cultural y ambiental;\n\nVIII. Acopiar, validar, integrar y sistematizar información oportuna, relevante, homogénea y confiable necesaria para el diagnóstico continuo, la planeación y la toma de decisiones para el desarrollo municipal;\n\nIX. Promover la movilidad de su personal académico y alumnos con instituciones nacionales e internacionales;\n\nX. Planear, programar, administrar y evaluar su propio desarrollo económico y administrativo, de manera sustentable, en el marco de las normas y políticas universitarias;\n\nXI. Generar recursos alternos para su operación y desarrollo; y\n\nXII. Las demás que resulten necesarias para el cumplimiento de sus fines, conforme a la legislación universitaria.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ///OBJETIVOS
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'OBJETIVO GENERAL',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Impulsar el mejoramiento del nivel de desarrollo sustentable de los municipios de la entidad a través de la docencia, la investigación y la extensión universitaria, estableciendo redes de colaboración entre la UNACH, los Ayuntamientos Municipales y demás actores del desarrollo',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'OBJETIVOS ESPECIFICOS',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'I. Apoyar el desarrollo de los municipios de la entidad, principalmente aquellos de menor índice de desarrollo humano.\n\nII. Crear las bases para el desarrollo de la gerencia social y la administración pública con un enfoque municipal, formando profesionales con ese perfil.\n\nIII. Brindar servicios para la formación de recursos humanos en los municipios que fortalezcan la gestión administrativa y la organización social.\n\nIV. Desarrollar estudios sobre la situación de los municipios de Chiapas basados en los procesos y condiciones sociales.\n\nV. Realizar proyectos de investigación/acción, para atender los problemas que obstaculizan el desarrollo social.\n\nVI. Brindar asesoría y servicios especializados de evaluación y gestión social sobre el cumplimiento de indicadores y de proyectos de desarrollo municipal.\n\nVII. Fomentar la vinculación de docentes/investigadores y estudiantes con los municipios.\n\nVIII. Integrar un acervo documental y bases de datos sobre los municipios de Chiapas para brindar un servicio de consulta a investigadores e instituciones públicas y privadas.',
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
            ///ORGANIZACION
            ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://cedes.unach.mx/images/organigrama.png',
                      height: 320,
                    ),
                    const Text(
                        'última revisión agosto del 2015'
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("cedes.unach.mx/images/manualcedesAprobado2014.pdf");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Manual de Organización y Funciones"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ///UBICACION
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
              child: Column(
                children: [
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            'Calle Orquídeas No. 192 esquina Calle Laureles Fraccionamiento Jardines de Tuxtla C.P. 29020',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            'Tuxtla Gutiérrez, Chiapas, México',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            'cedes@unach.mx',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            'Teléfono de Oficina: 01 (961) 61 7 80 00 ext. 5541',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            '(961) 60 4 73 54',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            'Nota: Por motivos actuales del COVID-19 por el momento se atenderá a través del correo electrónico',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ///IDENTIDAD
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'IDENTIDAD',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Image.network(
                              'https://cedes.unach.mx/images/CEDEsedificio.png',
                              height: 250,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Centra los elementos horizontalmente
                        children: [
                          Expanded(
                            child: Center(
                              child: Image.network(
                                'https://cedes.unach.mx/images/unach.png',
                                height: 180,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Image.network(
                                'https://cedes.unach.mx/images/CEDES-color-oficial_transp.png',
                                height: 180,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'NUESTRO LEMA',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 10),
                      child: Text(
                        '"Por la conciencia de la necesidad de servir"',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Aunque previamente se había emitido una convocatoria para que la UNACH, mediante concurso, tuviera su lema. En la XII Sesión de Consejo celebrada el 11 de septiembre de 1976, en el campus I, se acordó que el lema "Por la Conciencia de la Necesidad " enviada por Fernando Orduña Calcáceo fuera el ganador, el cual se consideró que estaba incompleto y el Consejo decidió agregarle "de servir"; por lo que finalmente quedó Por la Conciencia de la Necesidad de Servir. "Es una forma Dialéctica de la Libertad", explicó su autor en una entrevista telefónica en el año de 1986.',
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
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'NUESTRO ESCUDO',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 15),
                        child: GestureDetector(
                          onTap: () {
                            _launchURL(
                                "www.unach.mx/acerca-de/identidad#nuestro-escudo");
                          },
                          child: const Text(
                            'https://www.unach.mx/acerca-de/identidad#nuestro-escudo',
                            style: TextStyle(
                             color: Color(0xFF18386B))
                            ),
                          ),
                        ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'CREACIÓN DE LA UNACH',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                              "www.unach.mx/acerca-de/identidad#la-creacion-de-la-unach");
                        },
                        child: const Text(
                            'https://www.unach.mx/acerca-de/identidad#la-creacion-de-la-unach',
                            style: TextStyle(
                                color: Color(0xFF18386B))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'FUNDADOR DE LA UNACH',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                              "www.unach.mx/acerca-de/identidad#el-fundador-de-la-unach");
                        },
                        child: const Text(
                            'https://www.unach.mx/acerca-de/identidad#el-fundador-de-la-unach',
                            style: TextStyle(
                                color: Color(0xFF18386B))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'NUESTRO MÁS GRANDE BENEFACTOR',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                              "www.unach.mx/acerca-de/identidad#nuestro-mas-grande-benefactor");
                        },
                        child: const Text(
                            'https://www.unach.mx/acerca-de/identidad#nuestro-mas-grande-benefactor',
                            style: TextStyle(
                                color: Color(0xFF18386B))
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        ' Manual Básico de Identidad ',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Image.network(
                              'https://cedes.unach.mx/images/Manual_identidad.jpg',
                              height: 250,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("www.unach.mx/images/documentos/Manual_identidad_UNACH.pdf");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Ir al manual"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ///Modelo Educativo UNACH
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'NUESTRO MODELO EDUCATIVO',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'La Universidad Autónoma de Chiapas (UNACH), como máxima casa de estudios del estado, tiene como razón de ser la formación integral de sus estudiantes, como parte medular de su misión; para ello, plantea este Modelo Educativo y Académico, que constituye el documento rector que fundamenta y orienta el ser y quehacer académico universitario. El Modelo Educativo y Académico busca generar sinergias entre las estructuras y los procesos académicos y administrativos, para mejorar la calidad educativa, coadyuvar al cumplimiento de la misión y visión de la Universidad, así como para atender las necesidades que la sociedad actual requiere, enfocados en la formación integral de profesionales competentes, críticos, éticos, con conciencia ciudadana y socialmente responsables.',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("www.unach.mx/component/k2/download/342_b3d38cc23198d67e5118db0c3b31e0eb");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Ver Modelo Educativo y Academico"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //LEGISLACION
            ListView(
              children: [
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'LEGISLACIÓN',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    TablaLegislacion()
                  ],
                ),
              ],
            ),
            //PROTOCOLOS
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'PROTOCOLOS',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Image.network(
                              'https://www.cedes.unach.mx/images/programa.jpg',
                              height: 250,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("https://www.unach.mx/component/k2/download/295_df6b5b836c7f30249998d90d949ddff8");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Ver Programa contra la violencia de genero."),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("https://www.unach.mx/component/k2/download/296_2a2a1df7ced64b1a1bbe06d0ea8662b0");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Ver Protocolo de actuación ante situaciones de violencia."),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Image.network(
                              'https://www.cedes.unach.mx/images/Lineamientostecnicosdeseguridadsanitaria.png',
                              height: 250,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("https://www.cedes.unach.mx/images/Lineamientostecnicosdeseguridadsanitaria.pdf");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Leer archivo."),
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
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'ACERCA DE LA UNACH',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Image.network(
                              'https://www.cedes.unach.mx/images/unach_1920.jpg',
                              height: 250,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'MISIÓN',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'La Universidad Autónoma de Chiapas es una Institución de Educación Superior pública y autónoma, socialmente responsable y con vocación de servicio; que forma de manera integral a profesionales competentes, críticos, éticos, con conciencia ciudadana y ambiental. La UNACH genera, divulga y aplica el conocimiento científico, tecnológico y humanístico; difunde la cultura y el arte, promueve el deporte y extiende sus servicios, vinculada con la sociedad en entornos locales, nacionales e internacionales; con personal calificado y programas educativos pertinentes y de calidad, para contribuir al desarrollo sustentable, al bienestar social, la cultura de paz, la democracia, la equidad y los derechos humanos.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'VISIÓN 2030',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'La Universidad Autónoma de Chiapas en el 2030 es una institución reconocida internacionalmente por el desempeño profesional y social de sus egresados; sus programas educativos pertinentes y acreditados; por los resultados de su actividad científica, humanística y tecnológica; su vinculación mediante acciones de colaboración y cooperación con organizaciones de los sectores público, privado y social, con la guía del Modelo Educativo Institucional y de una gestión transparente y efectiva, que impulsa el desarrollo de Chiapas y de México.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'PRINCIPIOS UNIVERSITARIOS',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              '1. PRINCIPIO DE AUTONOMÍA. Es la capacidad de las instituciones de darse a sí mismas su propia Ley y gobernarse por ésta, y de ordenar su mundo interior para otorgarse su nomos. Por tanto, este término evoca concepciones tales como: autoconciencia, autodeterminación, independencia y, en definitiva, libertad. La libertad que emana de la autonomía debe ser reflejada en la actividad de nuestra universidad, pues sin ella no se podría realizar la investigación, la docencia y la expresión de las ideas, ya que sólo en libertad y en autonomía el hombre es capaz de generar y transmitir conocimientos.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              '2. PRINCIPIO DE LIBERTAD. Es actuar bajo los dictados de la propia conciencia, con respeto al marco legal, a los derechos de terceros y dignidad de la persona.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              '3. PRINCIPIO DE JUSTICIA. Es la voluntad y la determinación continua de otorgarle a cada quién lo que le corresponde, en un plano de equidad.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              '4. PRINCIPIO DE EQUIDAD. Consiste en tratar a los integrantes de la comunidad universitaria de manera respetuosa, amena y sin discriminación de ningún tipo.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              '5. PRINCIPIO DE SERVICIO. Son todas aquellas acciones que adoptamos de forma permanente, con la finalidad de beneficiar a nuestros semejantes.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("https://www.unach.mx/images/documentos/decreto_declaratoria_principios_valores.pdf");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Ver la Declaratoria de Principios y Valores de la UNACH."),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //COORDINACION GENERAL
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'COORDINACIÓN GENERAL',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Image.network(
                              'https://www.cedes.unach.mx/images/UNACH.JPG',
                              height: 250,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'En el  Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES), como unidad académica de la Universidad Autónoma de Chiapas, desarrollamos las funciones sustantivas de Docencia,  Investigación y Extensión, además, por su génesis y naturaleza, las actividades del Centro, son plurales y orientadas a incidir en el contexto nacional, y de manera puntual en Chiapas.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Cabe destacar que, por las características geográficas de nuestro estado, constituye una fuente de conocimiento  sobre el desarrollo municipal, regional y transfronterizo,  como elementos de análisis para impulsar políticas públicas orientadas al desarrollo de la región. ',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Para el CEDES, la educación a distancia es una herramienta nodal para detonar la  equidad en el acceso a la educación superior, en este tenor, a través de sus programas de estudio, caracterizados por su pertinencia, factibilidad  y relevancia, con prospectiva, estos inciden en la formación de profesionales de pregrado totalmente innovadores.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Tenemos varias sedes municipales, una planta académica y administrativa que nos enorgullece, de alto impacto y vasta experiencia, así como redes de trabajo académico nacionales e internacionales.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Al ser partícipe de manera responsable en el desarrollo municipal, en la generación y revisión de políticas públicas de nueva y para las nuevas generaciones, asume la significatividad de trabajar con la mirada en lo sostenible, que permita a los municipios, apropiarse y  transitar hacia el cumplimiento de la agenda 2030, para desde lo local atender los retos globales.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'El Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES), asume con total responsabilidad social universitaria, su compromiso de participar para fortalecer y consolidar los niveles de bienestar de Chiapas y México.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Image.network(
                              'https://www.cedes.unach.mx/images/firmadocdos.png',
                              height: 250,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //PLAN DE MEJORA
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'PLAN DE MEJORA CONTINUA 2020 - 2024',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, right: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Image.network(
                              'https://www.cedes.unach.mx/images/Plan_de_mejora.png',
                              height: 250,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("https://www.cedes.unach.mx/images/PlandemejoracontinuaCEDESUNACh.pdf");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Leer"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //SITIOS DE INTERES
            ListView(
              children: [
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'SITIOS DE INTERÉS',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    TablaSitiosInteres()
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

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home_screen.dart';

class OfertaEducativa extends StatelessWidget {
  const OfertaEducativa({Key? key}) : super(key: key);

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
      length: 6,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Oferta Educativa'),
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
                  indicatorColor: Color(0xFF01579B),
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  tabs: [
                    Tab(text: 'Oferta Educativa'),
                    Tab(text: 'Estadistica y Sistemas de Información'),
                    Tab(text: 'Desarrollo Municipal y Gobernabilidad'),
                    Tab(text: 'Gerencia Social'),
                    Tab(text: 'Educación Continua'),
                    Tab(text: 'Sedes Académicas'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            //OFERTA EDUCATIVA
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Nuestra Oferta Educativa',
                        style: TextStyle(
                            fontSize: 16.0,
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
                              'El auge e importancia que ha adquirido la modalidad de educación a distancia, asigna amplias expectativas a las instituciones de educación superior encargadas directamente de impartir programas de estudio. Esta coyuntura representa un área de oportunidad para la consolidación de los programas de estudio que invariablemente requiere de un proceso de fortalecimiento de las funciones sustantivas de la universidad: investigación, docencia y extensión.Congruentes con esta realidad, el Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES), ha incrementado sus programas educativos, ampliando así su oferta en el nivel superior. Para responder con eficiencia a este crecimiento y a las expectativas de los alumnos, el CEDES ha impulsado un proceso de consolidación de su estructura administrativa, con la finalidad de mejorar el ejercicio de las funciones sustantivas de investigación, docencia y extensión que se han venido ampliando gradualmente desde su creación en 2007.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0, bottom: 20),
                      child: Text(
                        'Hoy en día se ofrecen los programas de:',
                        style: TextStyle(
                            fontSize: 16.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Licenciatura en Gerencia Social: ',
                              style: TextStyle(fontWeight: FontWeight.bold), 
                            ),
                            TextSpan(
                              text: 'La cual cuenta con ocho generaciones egresadas.',
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15,),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Licenciatura en Desarrollo Municipal y Gobernabilidad: ',
                              style: TextStyle(fontWeight: FontWeight.bold), 
                            ),
                            TextSpan(
                              text: 'Este programa académico modular iniciado en 2009, cuenta con siete generaciones de egresados.',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 15, bottom: 20),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Licenciatura en Estadística y Sistemas de Información: ',
                              style: TextStyle(fontWeight: FontWeight.bold), 
                            ),
                            TextSpan(
                              text:
                              'El diseño de este programa académico coordinado por docentes especialistas del CEDES, contó con la colaboración de expertos de la Facultad de Contaduría de la UNACH, el INEGI y profesionales de la Dirección del Modelo Educativo Universitario. Actualmente cuenta con seis generaciones de egresados.',
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ],
            ),
            //ESTADISTICA
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/esi.jpg',
                        height: 250,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Descripción',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'Propone formar profesionales que permitan hacer frente a las problemáticas sociales en la cual persiste la necesidad de aumentar la eficiencia en el uso de los recursos que hacen imprescindibles la formación de un profesionista en el área de la estadística con la plusvalía del conocimiento en los sistemas de información, a fin de que constituya la base de generación de la información mediante métodos estadísticos e información confiable. La formación de recursos humanos en el análisis, conjuntamente con la aplicación en áreas concretas del quehacer profesional como la economía, demografía y la salud constituyen una prioridad.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Misión',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'Formar profesionales competentes, críticos, propositivos y creativos, con espíritu ético y humanista, conciencia histórica, social y ecológica que comprenda y anticipe la complejidad de la realidad social; capaces de organizar, sistematizar, analizar e interpretar información.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Visión',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'Será un programa educativo acreditado con alto nivel académico. Los egresados participarán en la resolución de problemas estratégicos de la región y problemas actuales del estado, municipales y/o localidades para incidir en el desarrollo de la sociedad chiapaneca',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Perfil de Ingreso',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'El estudiante a ingresar a la licenciatura deberá cumplir con los siguientes requisitos:\n- Gusto por las matemáticas, la estadística y las ciencias sociales.\n- Contar con aptitud de análisis, síntesis, abstracción, capacidad de integración de conocimientos, e interacción entre el conocimiento académico y la realidad.\n- Tener la sensibilidad social y vocación por el estudio continuo, la actualización de sus conocimientos y la investigación, así como la capacidad para obtener, organizar, analizar interpretar y aplicar la información.\n- Disposición al autoaprendizaje y a la autorregulación.\n- Disposición para realizar estudios de campo por varios días.\n- Interés por la lectura.\n- Expresarse adecuadamente en forma oral y escrita.\n\nTener valores como ética profesional, responsabilidad, orden, disciplina, perseverancia, compañerismo, solidaridad, sentido de honor y justicia.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Perfil de Egreso',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'El estudiante será capaz de:\n- Generar datos confiables o en su caso mejorar los existentes y/o ajustar los sistemas de información de los sectores para realizar análisis integrados.\n- Aplicar la estadística en el análisis interdisciplinario y de esta manera transformar la estadística en información para fundamentar la toma de decisiones.\n- Producir análisis integral de sujetos y fenómenos con el uso intensivo de técnicas estadísticas.\n- Desarrollar la capacidad para realizar análisis comparativos.\n- Generar líneas de investigación estadística que requieran inferir o modelar patrones a partir de datos.\n- Producir permanentemente informes que incorporen la medición y aplicación de indicadores estadísticos.\n\nLas actividades referidas se desarrollarán a nivel internacional, nacional, regional, estatal, municipal y local en el ámbito social, económico y político.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Campo Laboral y Profesional',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'El egresado de la Licenciatura en Estadística y Sistemas de Información podrá desempeñarse en el desarrollo y aplicación de técnicas y métodos estadísticos; desarrollo de modelos cuantitativos de sistemas económicos, administrativos e industriales, basados en la estadística, así como aplicar conocimientos de ésta área en diversos campos como salud, medicina, biología, ingeniería, educación, demografía, entre otras; tanto a nivel de investigación como de aplicaciones tecnológicas.',
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
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("https://www.cedes.unach.mx/images/MAYACURRICULARLESI-2.pdf");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Descargar Mapa Curricular"),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Plan de estudios Estadísticas y Sistemas de Información',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        'assets/semestre1.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        'assets/semestre2.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        'assets/semestre3.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        'assets/semestre4.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        'assets/semestre5.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        'assets/semestre6.png',
                        height: 250,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Requisitos de Ingreso',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'El aspirante a ingresar a la Licenciatura en Estadística y Sistemas de Información, deberá cumplir con los siguientes requisitos:\n- Haber cursado el nivel de bachillerato, reconocido por la Secretaría de Educación Pública.\n- Aprobar el examen de admisión general aplicado por la Universidad Autónoma de Chiapas para la selección de aspirantes.\n- Realizar los trámites académico-administrativos que exige la Universidad para su inscripción.\n\nEn el caso de los aspirantes de origen extranjero, deberán presentar certificado de estudios equivalentes al nivel de enseñanza media superior, revalidados por la Secretaría de Educación Pública.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Informes',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES)',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              '- Coordinadora de licenciatura: Biol. María Stefany Gordillo Martínez\n- Dirección: Calle Orquídea núm. 192, esquina calle Laureles,\n- Fraccionamiento Jardines de Tuxtla, C. P. 29020.\n- Tuxtla Gutiérrez, Chiapas\n- Horario de atención: de 8:00 a 16:00 horas\n- Teléfono celular: 9611205528\n- Correo electrónico: cedes.lesi@unach.mx',
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
            //DESARROLLO MUNICIPAL
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/dgm.jpg',
                        height: 250,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Descripción',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'El licenciado en Desarrollo municipal y gobernabilidad promueve el bienestar de individuos, grupos y comunidades, facilita la cohesión social en períodos de cambio y apoya y protege a los miembros vulnerables de la comunidad, trabajando en común con los usuarios de los servicios, las comunidades y otras profesiones. Formar profesionales con conocimientos, habilidades y aptitudes, capaces de promover el desarrollo socioeconómico, político y social desde el ámbito local, integrando redes de colaboración y facilitando la gobernabilidad de los sistemas municipales.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Misión',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'La licenciatura en Desarrollo municipal y gobernabilidad forma profesionales con conocimientos, habilidades y aptitudes, capaces de promover el desarrollo económico, político y social a nivel local; cuenta con un cuerpo académico de alto nivel científico, lo que permite a los egresados, integrar los esfuerzos que realizan las diferentes organizaciones e instituciones en un territorio dado, facilitando la gobernabilidad de los sistemas municipales.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Visión',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'Es un programa educativo de calidad que fortalece la formación del talento humano que requieren las organizaciones e instituciones públicas y privadas de los sistemas municipales. Cuenta con un cuerpo académico y egresados que realzan el prestigio de la Unach, lo que permite la eficacia, efectividad y eficiencia del desarrollo económico, político y social de los diferentes territorios garantizando su gobernabilidad.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Perfil de Ingreso',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'El aspirante a esta licenciatura deberá reunir las condiciones siguientes:\n- Demostrar su interés para dedicarse al desarrollo socio-económico de los municipios\n- Estar identificado con la problemática social\n- Ser proactivo y responsable\n- Poseer valores éticos, morales y humanísticos\n- Afición por la lectura y la cultura en general\n- Habilidad para expresarse correctamente en forma oral y escrita\n- Habilidad básica en el manejo de computadoras\n- Capacidad de trabajar en equipo\n- Capacidad autodidacta\n- Actitud crítica y creativa',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Perfil de Egreso',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'El egresado de la licenciatura en Desarrollo municipal y gobernabilidad está formado desde el paradigma del pensamiento complejo, la inter y transdisciplinariedad, tendrá la formación humanística, científica y técnica necesaria para insertarse a los campos laborales más diversos con honestidad y responsabilidad. Es un profesional capaz de ejecutar las competencias integrales siguientes:\n- Analizar el contexto\n- Identificar el rol de la familia y la participación social en el ámbito municipal\n- Convocar a los actores, coordinar acciones sociales y proponer alternativas de decisión en el municipio\n- Elaborar planes, programas y proyectos de desarrollo local sustentable y de investigación.\n- Coordinar la participación de las redes sociales según situación estratégica en un municipio\n- Evaluar resultados e impactos de las intervenciones que selecciona previamente.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Campo Laboral y Profesional',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'Los profesionales egresados de la licenciatura en Desarrollo municipal y gobernabilidad desempeñarán sus competencias a nivel municipal, así como aquellos que actualmente realizan su trabajo en oficinas públicas y privadas de los sistemas municipales. Por otra parte, el propio desarrollo socio-económico exige recursos humanos con mayor y mejor calidad científico-técnica.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Plan de estudios',
                        style: TextStyle(
                          fontSize: 14.0,
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
                              'Semestre l\n- Naturaleza del conocimiento\n- Razonamiento matemático\n- Sociedad actual\n- Estado y sociedad\n- Economía y mercado\n. Gobierno y población',
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
                              'Semestre ll\n- La familia como núcleo social y sociedad\n- Estado, democracia y participación social\n- Sistemas municipales en el estado de Chiapas\n- Marco legal en el estado de Chiapas',
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
                              'Semestre lll\n- El espacio local en el contexto económico y social\n- Los actores sociales\n- Los problemas sociales y económicos\n- Introducción a la metodología de la investigación\n- Economía y condiciones de vida\n- Desarrollo y gobernabilidad',
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
                              'Semestre lV\n- Producción y servicios sociales\n- La atención a los problemas socioeconómicos\n- Diseño de proyectos, certificación PMI o PMP\n- Gerencia y gobernabilidad de los sistemas municipales\n- Investigación cuantitativa\n- Optativa I*',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        '*Opciones',
                        style: TextStyle(
                          fontSize: 14.0,
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
                              '1) Unidad de competencia de elección libre\n2) Realizar la UVD I (IV semestre) y UVD II (V semestre)',
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
                              'Semestre V\n- Aplicaciones de la teoría de redes\n- El componente político\n- El componente técnico\n- El componente comunitario\n- Análisis político y estratégico\n- Investigación cualitativa\n- Optativa II*',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        '*Opciones',
                        style: TextStyle(
                          fontSize: 14.0,
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
                              '1) Unidad de Competencia de elección libre.\n2) Realizar la UVD I (IV semestre) y UVD II (V semestre)',
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
                              'Semestre Vl\n- Elaboración, Ejecución y control de proyectos de desarrollo\n- Evaluación del desempeño individual e institucional\n- Evaluación de recursos y procesos\n- Evaluación de resultados e impacto\n- Transparencia y rendición de cuentas\n- Seminario de tesis',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Requisitos de Ingreso',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'El aspirante a ingresar a la licenciatura en Desarrollo municipal y gobernabilidad, deberá cumplir con los siguientes requisitos:\n- Acreditar la conclusión de estudios de bachillerato o su equivalente, reconocidos por la Secretaria de Educación Pública del ámbito correspondiente. Los de origen extranjero, deben presentar certificado de conclusión de estudios equivalentes al nivel de enseñanza media superior, revalidados por la Secretaría de Educación Pública u optar por el acceso como estudiante para obtener el título extranjero no homologado. En cuyo caso deberá sujetarse a los tratados, acuerdos internacionales y normatividad aplicable.\n- Ser seleccionado mediante el concurso de ingreso establecido por la Universidad.\n- Realizar los trámites académico-administrativos de inscripción, que establece la Legislación Universitaria',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Informes',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES)',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              '- Coordinador de licenciatura: Mtro. Rolando Antonio Espinosa \n- Dirección: Calle Orquídea núm. 192, esquina calle Laureles,\n- Fraccionamiento Jardines de Tuxtla, C. P. 29020.\n- Tuxtla Gutiérrez, Chiapas\n- Horario de atención: de 8:00 a 16:00 horas\n- Teléfono celular: 9611374316\n- Correo electrónico: cedes.ldmg@unach.mx',
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
            //GERENCIA SOCIAL
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/gerencia.jpg',
                        height: 250,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Descripción',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'Formar profesionales capaces de gestionar, diseñar, implementar y evaluar programas y proyectos sociales que impacten en el desarrollo social sustentable, articulando la participación social, en especial la de los grupos más vulnerables, induciendo la formación de ciudadanos que sepan ejercer sus derechos y asumir sus responsabilidades y obligaciones. Los gerentes sociales facilitan procesos relacionados con el fortalecimiento y el despliegue de capacidades individuales y organizacionales propiciando la igualdad de oportunidades, la equidad social, el desarrollo de la ciudadanía y por ende, la gobernabilidad y la democratización de la sociedad. Al trabajar desde el sector público o desde organizaciones de la sociedad civil, asesoran procesos participativos sinérgicos que conducen a la superación de apremiantes necesidades sociales. Acompañan a productores del sector social en la gestión de proyectos productivos sostenibles que les permitan mejorar su calidad de vida; facilitan procesos de gestión local y municipal para fortalecer capacidades locales detonadoras de desarrollo; elaboran planes de capacitación; diseñan, implementan y evalúan programas sociales generando procesos participativos con miras a la obtención de resultados e impactos sociales sostenibles y esperados por la población beneficiaria en educación, salud, alimentación, empleo o en cualquier otra área que tenga que ver con el desarrollo humano.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Misión',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'Formar profesionistas altamente calificados en gerencia social con conocimientos teóricos, metodológicos y prácticos para que sean capaces de pensar holísticamente los problemas sociales, aplicar enfoques innovadores de intervención social para solucionar problemas y actuar éticamente en los diversos escenarios en los que se desenvuelvan.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Visión',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'La licenciatura en Gerencia social es un programa educativo acreditado; está vinculado a las necesidades sociales; es un espacio en donde se identifica, analiza y discute la situación socioeconómica de México y, principalmente, se proponen alternativas innovadoras de solución a los problemas sociales -en un marco de respeto a la diversidad cultural y ambiental y a los derechos humanos.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Perfil de Ingreso',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'Es deseable que el estudiante que quiera incorporarse a la licenciatura en Gerencia social posea las siguientes características:\n- Afición por la lectura y la cultura en general\n- Habilidad para expresarse correctamente en forma oral y escrita\n- Habilidad básica en el manejo de computadoras\n- Interés por el desarrollo social\n- Sensibilidad ante la problemática social\n- Capacidad de trabajar en equipo\n- Capacidad autodidacta\n- Actitud crítica y creativa',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Perfil de Egreso',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'El licenciado en Gerencia social tendrá la formación humanística, científica y técnica necesaria para insertarse a los campos laborales más diversos con honestidad y responsabilidad; asimismo, capacidad organizacional ante la complejidad del devenir social para establecer consensos en la diversidad, fomentando la solidaridad básica que posibilite procesos de desarrollo humano y social sostenible mediante la organización de redes sociales “que ayuden a ver que la suerte del género humano está profundamente entrelazada, y que esto atraviesa barreras de cultura, idioma y sociales” Morin (2002), y que promueven la formación de una ciudadanía crítica y responsable. Estos atributos del egresado se concretizan en las competencias genéricas y específicas siguientes.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Campo Laboral y Profesional',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'El profesional egresado de esta licenciatura podrá desempeñarse en:\n- Instituciones municipales, estatales y nacionales, públicas y privadas\n- Organizaciones sociales y civiles, nacionales e internacionales\n- En altos niveles gerenciales en el ámbito nacional e internacional\n- Como consultores de organismos públicos y privados\n- En los ayuntamientos municipales\n- En instituciones académicas\n- En actividades productivas como líderes y asesores de organizaciones y sociales',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Plan de estudios',
                        style: TextStyle(
                          fontSize: 14.0,
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
                              'Primer Semestre\n- Naturaleza del conocimiento\n- Estado y sociedad\n- Economía y mercado\n- Razonamiento matemático\n- Gobierno y población\n- Seminario: Sociedad actual',
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
                              'Segundo Semestre\n- Políticas sociales\n- Estructura social\n- Gerencia social\n- Seminario: Desarrollo-naturaleza-sociedad-individuo\n- Taller de sistemas de información especializados\n- Taller de estudios contextuales, con base en sistemas de información especializados',
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
                              'Tercer Semestre\n- Necesidades sociales\n- Gestión y acción social\n- Sociedad y territorio\n- Análisis organizacional\n- Introducción a la metodología de la investigación\n- Seminario: Políticas públicas y gobiernos locales\n- Taller de elaboración de diagnósticos y construcción de escenarios para la intervención',
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
                              'Cuarto Semestre\n- Planeación para el desarrollo social\n- Diseño de proyectos\n- Métodos de investigación cuantitativa\n- Seminario: Gobernabilidad y empoderamiento\n- Taller de intervención y evaluación\n- Optativa I',
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
                              'Quinto Semestre\n- Taller: Implementación y evaluación de proyectos\n- Taller: Gestión de recursos financieros para proyectos de inversión social\n- Taller: Evaluación de proyectos sociales\n- Métodos de investigación cualitativa\n- Optativa II\n- Optativa III',
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
                              'Sexto Semestre\n- Taller: Investigación y sistematización de experiencias\n- Taller: Gestión municipal. Estudio de casos\n- Seminario de tesis\n- Métodos de investigación cualitativa\n- Optativa IV',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Requisitos de Ingreso',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              'El aspirante a ingresar a la Licenciatura en Estadística y Sistemas de Información, deberá cumplir con los siguientes requisitos:\n- Acreditar la conclusión de estudios de bachillerato o su equivalente, reconocidos por la Secretaria de Educación Pública del ámbito correspondiente.\n- Los de origen extranjero, deben presentar certificado de conclusión de estudios equivalentes al nivel de enseñanza media superior, revalidados por la Secretaría de Educación Pública, u optar por el acceso como estudiante para obtener el Título extranjero no homologado, en cuyo caso deberá sujetarse a los tratados, acuerdos internacionales y normatividad aplicable.\n- Ser seleccionado mediante el concurso de ingreso establecido por la Universidad.\n- Realizar los trámites académico-administrativos de inscripción, que establece la Legislación Universitaria.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Informes',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        'Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES)',
                        style: TextStyle(
                          fontSize: 16.0,
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
                              '- Coordinador de licenciatura: Mtra. Aurelia Berenice Cordero Pérez\n- Dirección: Calle Orquídea núm. 192, esquina calle Laureles,\n- Fraccionamiento Jardines de Tuxtla, C. P. 29020.\n- Tuxtla Gutiérrez, Chiapas\n- Horario de atención: de 8:00 a 16:00 horas\n- Teléfono: 01 (961) 61 7 80 00, ext. 5544\n- Correo electrónico: cedes.lgs@unach.mx, cedes.ldmg@unach.mx, berenice.cordero@unach.mx',
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
            //EDUCACION CONTINUA
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
                              'La Coordinación de Educación Continua (CEC) es una instancia de la Coordinación General de Universidad Virtual que dirige, planea, gestiona, evalúa, registra, estandariza, valida y difunde las funciones de educación continua al servicio de la comunidad universitaria y de la sociedad en general, a través de diferentes escenarios educativos vanguardistas no convencionales en las modalidades presencial, semipresencial y a distancia.\n\nLa educación continua en la Universidad Autónoma de Chiapas es organizada y programada por las Facultades, Escuelas, Institutos, Centros y Dependencias de la Administración Central, y se acompaña institucionalmente desde la Coordinación de Educación Continua (CEC).\nCada unidad académica o dependencia central que oferte servicios de educación continua, cuenta con una persona responsable de éstas, a quien se le denomina “Gestor”, conformando así la Red de Gestores de Educación Continua de la Universidad Autónoma de Chiapas.\n\nTodas las actividades y eventos de educación continua de la Universidad son registrados por las UA y DAC en la Coordinación de Educación Continua (CEC), quien otorga la validación correspondiente (Valor Curricular).\n\nPara más información consulte la siguiente liga: https://www.unach.mx/oferta-educativa/educacion-continua',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
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
            //SEDES ACADEMICAS
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
                              'La Universidad Autónoma de Chiapas cuenta con 78 Sedes Académicas a Distancia con espacios físicos ubicados en 61 municipios del Estado, con equipos de cómputo e internet, donde pueden utilizarlos sin costo para los estudiantes, además de recibir asesoría técnica y académica.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/375765926_702272811942860_2392789381255725003_n.jpg',
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

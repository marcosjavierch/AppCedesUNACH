import 'package:unachcedes/widgets/tabla_legislacion.dart';
import 'package:unachcedes/widgets/tabla_sitios_interes.dart';
import 'package:unachcedes/widgets/tabla_encuentros_dvv.dart';
import 'package:flutter/material.dart';
import 'package:unachcedes/widgets/tabladvvdiplomados.dart';
import 'home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class DVVInt extends StatelessWidget {
  const DVVInt({Key? key}) : super(key: key);

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
          title: const Text('DVV-International'),
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
                    Tab(text: 'Encuentros'),
                    Tab(text: 'Antecedentes'),
                    Tab(text: 'Convenios'),
                    Tab(text: 'Diplomados'),
                    Tab(text: 'Publicaciones'),
                    Tab(text: 'Unidad de Vinculación Docente'),
                    Tab(text: 'Aplicación Móvil: CAPJA'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ///ENCUENTROS
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
                              'En el marco de las acciones de colaboración entre el Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (UNACH CEDES) y DVV-International, se participó en el Encuentro Binacional Guatemala-México 2023: “Centros de Formación Diálogos hacia un currículo de Gestión y Administración” los días 05 y 06 de Octubre en la ciudad de Antigua Guatemala; con el propósito de fortalecer la articulación entre los países participantes en el ámbito de la educación y que enriquecerá las perspectivas y conocimientos que sentará las bases para elaborar procesos de formación centrado en la gestión y administración de centros de educación de jóvenes y adultos.',
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
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'En el encuentro participaron: FLACSO-Guatemala, PRODESSA, Fundación Tierra Nuestra, Conalfagt, CUNOROC Centro Universitario de NOr Occidente, CEEX SAN PABLO, Dideduc Quetzaltenango, Save the children Guatemala, Cedeca La Albarrada, Pronatura Sur, A. C., ICHEJA CHIAPAS, Tsomanotik, Voces Mesoamericanas Acción con Pueblos Migrantes, Patronato Pro Educación Guaquitepec y UNACH CEDES.',
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
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Al encuentro asistió el Dr. Dorian Francisco Gómez Hernández; Coordinador de Proyectos de DVV-International en CEDES; en las actividades lúdicas y de reflexión en temáticas diversas como “Planeación y evaluación de necesidades”, “Gestión interna y liderazgo”, “Trabajo en red y cooperación”, “Seguimiento y evaluación” y “Gestión financiera” orientado a desarrollar un Currículum de Gestión y Administración adaptado a las necesidades de los centros de formación integral para personas jóvenes y adultas en la región transfronteriza entre Guatemala y México.',
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
                              'EVIDENCIAS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/galeria2/dia_1.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/galeria2/dia_12.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/galeria2/dia_2.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/galeria2/dia_21.png',
                        height: 250,
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                            child: TablaEncuentrosDVV(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //ANTECEDENTES
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, bottom: 20.0, left: 15, right: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Desde el año 2017, la Universidad Autónoma de Chiapas (UNACH) en México, a través del Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES); el Instituto de Cooperación Internacional de la Asociación Alemana para la Educación de Adultos (Deutscher Volkshochschul-Verband e.V., DVV), DVV Internacional; la Facultad Latinoamericana de Ciencias Sociales (FLACSO) con sede en Guatemala y la Unidad Académica en Quetzaltenango en Guatemala; y la Universidad de San Carlos en Huehuetenango (USAC), Guatemala, con su Unidad de Vinculación del Centro Universitario del Nor Occidente (CUNOROC); realizaron un intercambio de experiencias e investigaciones relacionadas con el eje: Migración, Educación y Desarrollo (MED), específicamente en los departamentos de Guatemala y los municipios de Chiapas, México que se ubican en la zona transfronteriza entre ambos países, y que presentan un alto índice de pobreza, pobreza extrema y marginación.',
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
                      padding: const EdgeInsets.only(bottom: 20.0, left: 15, right: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Como resultado de dichos intercambios, se formaliza la Alianza para el Desarrollo Transfronterizo “ADT”, con la finalidad de elaborar productos de investigación que fundamenten propuestas de políticas públicas para impulsar y fortalecer procesos de formación-capacitación, con los diferentes actores del ámbito social, público y privado de la zona transfronteriza que comparten México y Guatemala.',
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
            //CONVENIOS
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'CONVENIOS',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Carta de Intención',
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
                              'El ocho de septiembre de 2018 se firmó una Carta de Intención en las instalaciones de la Facultad de Derecho de la Universidad Autónoma de Chiapas, con la finalidad de establecer de manera conjunta los mecanismos que les permitiera formalizar en el futuro un Convenio General de Colaboración.',
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
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Convenio General',
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
                              'El 01 de agosto del 2020, se firmó un Convenio General de Colaboración, que se encuentra vigente, cuyo objeto es la colaboración en materia de Migración, Educación y Desarrollo (MED).',
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
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Convenios Específicos',
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
                              'El 01 de agosto del 2020, se firma un convenio específico para realizar el Diplomado en Modalidad a Distancia denominado “Desarrollo Transfronterizo con Enfoque Sostenible” en su primera emisión.',
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
                              'El 01 de junio del 2021, se firma un convenio específico para realizar el Diplomado en Modalidad a Distancia denominado “Desarrollo Transfronterizo con Enfoque Sostenible” en su segunda emisión.',
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
                              'El 02 de enero de 2022, se firma un convenio de subvención para realizar el Diplomado en Modalidad a Distancia denominado "Desarrollo Transfronterizo con enfoque Sostenible", en su 3ª emisión y una APP-Móvil en el marco de la EPJA.',
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
                              'El 01 de junio del 2022, se firma un adéndum al convenio de subvención, para la participación en el “XIII Simposio Internacional Educación y Cultura y IV Taller Internacional de Evaluación Educativa y Acreditación de la Educación Superior” en Varadero, Cuba; del 15 al 17 de junio del 2022.',
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
                              'El 01 de junio de 2022, se firma un convenio de cooperación tripartita, junto con la Universidad de Matanzas (CUBA) para la realización del “XIII Simposio Internacional Educación y Cultura y IV Taller Internacional de Evaluación Educativa y Acreditación de la Educación Superior” en Varadero, Cuba; del 15 al 17 de junio del 2022.',
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
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Convenio de colaboración institucional ',
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
                              'El 02 de enero de 2023, se firma un Convenio de colaboración institucional, para la realización del Proyecto denominado: "Tejiendo nuevas estrategias enfocadas en: Migración, Educación y Desarrollo en el contexto transfronterizo Guatemala-México, por los derechos de todas y todos".',
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
            //DIPLOMADOS
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Resultados',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Diplomado en Desarrollo Transfronterizo con enfoque Sostenible 2020 (Primera Generación) ',
                        textAlign: TextAlign.center,
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
                              'El propósito del Diplomado, es analizar el contexto socio-económico-político-cultural de la región transfronteriza entre México y Guatemala, desde la perspectiva de los sujetos que habitan en el territorio, a partir del eje: Migración, Educación y Desarrollo, para recuperar los insumos necesarios que permitan la formulación de planes de desarrollo.',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                      child: Image.asset(
                        'assets/tabladiplomados.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Se inscribieron un total de 25 estudiantes de Chiapas y Guatemala, de los cuales 15 concluyeron el Diplomado satisfactoriamente, 11 son de México y 4 son de Guatemala, 10 son hombres y 5 son mujeres, además que 8 de ellos fueron invitados por la UNACH, 3 por DVV-International, 3 por FLACSO Y 1 por CUNOROC.',
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
                              'Como trabajo final de actividades del Diplomado, los educandos realizaron una ponencia sobre un problema relacionado con el eje MED, en la zona transfronteriza de Chiapas y Guatemala.',
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
                              'Derivado de lo anterior, un total de 13 educandos, 3 docentes y 2 organizadores, participaron como ponentes o coautores, en 11 trabajos de investigación, que fueron presentados en el Pre-Coloquio Internacional Ciencias de La Educación, Ciencias Administrativas y Desarrollo Municipal y Políticas Públicas, organizado por la Universidad de Matanzas, Cuba en coordinación con la Universidad de Tangamanga de San Luis Potosí, la Universidad Autónoma de San Luís Potosí y la Universidad Autónoma de Chiapas, en México; la Universidad de Maranhao, Brasil; el Centro Latinoamericano de Estudios Epistemológicos (CESPE); y DVV-International, a llevarse a cabo en la Ciudad de Varadero Cuba; en la modalidad a distancia del 5 al 7 de mayo de 2021. Cabe señalar, que el pago de las inscripciones de los educandos al Pre-Coloquio, se logró gracias a las becas otorgadas por DVV-International, ya que se redireccionó el recurso del estudio de campo.',
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
                              'Como aporte del Diplomado en cuanto a la investigación relacionada con el eje MED, de las11 ponencias presentadas en el Pre-Coloquio Internacional Ciencias de La Educación, Ciencias Administrativas y Desarrollo Municipal y Políticas Públicas, un total de 7 ponencias fueron seleccionadas por el comité académico del Coloquio, para ser publicadas en dos revistas indexadas y arbitradas:',
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
                              '- Revista Iberoamericana de Investigación Educativa\n- Atenas periodo 2021\n- Atenas periodo 2022',
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
                              'Ponencias presentados en el Pre-Coloquio Internacional Ciencias de La Educación, Ciencias Administrativas y Desarrollo Municipal y Políticas Públicas y en proceso de publicación.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: TablaDVVDiplomados(),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Diplomado en Desarrollo Transfronterizo con enfoque Sostenible 2021 (Segunda Generación).',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Propósito',
                        textAlign: TextAlign.start,
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
                              'Considerando los resultados de la primera Generación del Diplomado para el Desarrollo Transfronterizo con enfoque Sostenible, y con el apoyo de DVV-International da inicio la segunda generación del Diplomado, realizando los ajustes pertinentes en el diseño pedagógico, instruccional y atendiendo las recomendaciones realizadas de la primera generación\nPara esta segunda generación del Diplomado, se decide colegiadamente que un alumno destacado de la primera generación, se incorpore en el Módulo 4. Teorías del Desarrollo con Rostro Humano, ya que demostró tener amplio dominio del tema y con soporte de la Universidad de San Carlos de Guatemala, donde el labora.',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                      child: Image.asset(
                        'assets/tabladiplomados2.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Se inscribieron un total de 58 estudiantes, de los cuales 32 son hombres y 26 son mujeres, con un rango de edad entre los 20 y 63 años, distribuidos en 12 países: Argentina, Cuba, Ecuador, Honduras, Panamá, Paraguay, Perú, Puerto Rico, República Dominicana, Venezuela, Guatemala y México; además, se cuenta con la participación de becarios de los municipios de Chiapas: Berriozábal, Motozintla, Oxchúc, San Cristóbal de Las Casas, Tapachula, Tenejapa, Tuxtla Chico, Tuxtla Gutiérrez, y Zinacantán.',
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
                              'Egresaron un total de 21 estudiantes:\n- 12 mujeres y 9 hombres\n- 3 Bachillerato, 5 Licenciatura, 9 Maestría, 3 Doctorado y 1 Posdoctorado\n- 1 de Argentina, 1 de Perú, 1 de Honduras, 5 de Guatemala y 13 de México',
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
                              'Cargos:\n- Oficial de Estándares de la Coordinación Latinoamericana y del Caribe de Pequeños(as) Productores(as) y Trabajadores(as) de Comercio Justo (CLAC) de Perú\n- Cabo de Bomberos del Heroico y Benemérito Cuerpo de Bomberos de Honduras.\n- Oficial de Patrocinio para Socias Locales de Guatemala\n- Encargada de sede académica UNACH, en San Cristóbal de Las Casas.\n- Coordinador de la Licenciatura en Estadística y Sistemas de información\n- Encargada de Control Escolar del CEDES\n- Docentes, investigadores, personal administrativo\n- Estudiantes Universitarios (Licenciatura en Desarrollo Municipal y Gobernabilidad).',
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
                              'Estados de México: Veracruz, Tabasco, Oaxaca y Chiapas.\nMunicipios de Chiapas: Tenejapa, San Cristóbal de Las Casas, Tapachula, Berriozábal, Tuxtla Gutiérrez.',
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
                              'Como aporte del Diplomado en cuanto a la investigación relacionada con el eje MED, los estudiantes participaron en el “XIII Simposio Internacional Educación y Cultura y IV Taller Internacional de Evaluación Educativa y Acreditación de la Educación Superior” en la ciudad de Varadero en junio de 2022, en la modalidad virtual.',
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
                              '\n- DVV-International, a través del Convenio de colaboración con UNACH, realizó un financiamiento para el registro de 19 ponencias de los 21 estudiantes (2 coautores).\n- Se presentaron en el Simposio 19 ponencias virtuales, asesoradas por los Instructores de cada uno de los módulos y en especial del módulo VI, el Dr. Julio Guillén Velázquez.\n- Hasta el momento, se ha publicado 2 artículos de estudiantes, como resultado de la participación en el Simposio en la Revista Iberamericana de Investigación en Educación (RIIED) de Ecuador, en la Revista Atenas Científico Pedagógica de Facultad de Educación de la Universidad de Matanzas en Cuba; en la Revista Iberamericana de Investigación en Educación (RIIED) de Ecuador; en la Revista Entrevista Académica por la Universidad de Matanzas Cuba; y en un Libro, Editorial de la Universidad de Matanzas.',
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
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Diplomado en Desarrollo Transfronterizo con enfoque Sostenible 2023 (Tercera Generación).',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Propósito',
                        textAlign: TextAlign.start,
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
                              'Considerando los resultados de la primera y segunda Generación del Diplomado para el Desarrollo Transfronterizo con enfoque Sostenible, y con el apoyo de DVV-International; da inicio la tercera generación del Diplomado, en el que atendiendo las recomendaciones realizadas de la segunda generación, se realizaron los ajustes pertinentes en el rediseño pedagógico (curricular) e instruccional.\nLa tercera generación del Diplomado, permite analizar el contexto socio-económico-político-cultural de la región transfronteriza entre México y Guatemala, desde la perspectiva de los sujetos que habitan en el territorio, a partir del enfoque Migración, Educación y Desarrollo.',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                      child: Image.asset(
                        'assets/tabladiplomados3.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Se inscribieron un total de 55 educandos, de los cuales 25 son hombres, 28 son mujeres y 2 de la comunidad LGBTTTIQ. 3 cuentan con bachillerato, 35 con licenciatura, 12 con maestría y 5 con doctorado. A nivel internacional, se tiene presencia en países como Bolivia, Brasil, Guatemala, México, Honduras, y Paraguay. A nivel nacional en estados como Chiapas, Guerrero, Sonora, Yucatán y Tabasco. A nivel municipal se tiene presencia en Tuxtla, Tapachula, Tonalá, Suchiapa, Berriozábal, Amatenango de la frontera, Acala, Copainalá, La Trinitaria, Escuintla y San Cristóbal.',
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
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Participan estudiantes, docentes y empleados de las siguientes instituciones:',
                        textAlign: TextAlign.start,
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
                              '- Universidad Politécnica de Chiapas\n- Universidad Autónoma de Guerrero\n- Universidad Autónoma de Chiapas\n- Universidad Ciencias del Perú\n- Universidad Federal de Lavras en Brasil\n- Secretaría de Educación Pública en Chiapas\n- Seguridad Alimentaria Mexicana\n- Secretaria Municipal de Educação de São Paulo en Brasil\n- Secretaria de Medio Ambiente e Historia Natural del Estado de Chiapas\n- ONG Servicios para el desarrollo Guatemala\n- MUSAC / CONECULTA Chiapas\n- Ministerio de Planificación de Bolivia\n- Universidad Juárez Autónoma de Tabasco\n- Universidad del País Innova en Tuxtla Gutiérrez\n- Universidad San Carlos de Guatemala\n- Instituto Nacional de Pesca\n- Ayuntamiento de Tonalá, Chiapas\n- Centro Universitario de NorOccidente de la Universidad San Carlos de Guatemala\n- Congreso del Estado de Chiapas\n- Universidad Diego Rivera de Chiapas\n- Consejo Nacional de Fomento Educativo\n- Procuraduría de protección de Niñas, niños, adolescentes y la familia de DIF Chiapas.\n- Red Franciscana para Migrantes Guatemala RFM (voluntario)\n- Escuela de Lenguas Tapachula Campus IV Universidad Autónoma de Chiapas\n- H. Ayuntamiento Venustiano Carranza',
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
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Cargos',
                        textAlign: TextAlign.start,
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
                              '- Docentes\n- Administrativos\n- Chofer\n- Estudiante\n- Técnico de Campo\n- Coordinadora pedagógica\n- Técnico Especializado en medio ambiente\n- Vicerrector del Instituto Educativo IG\n- La titular de la procuraduría de protección de Niñas, niños, adolescentes y la familia de DIF Chiapas.\n- Jefe de la Unidad de Recursos Materiales y Servicios Generales\n- Coordinador Académico General\n- Coordinadora de CONOCER\n- Oficial de proyectos\n- Voluntaria',
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
                              'El Diplomado dio inicio el 09 de enero de 2023 y finalizará el 31 de julio de 2023, y se tiene programada como evidencia final una participación como ponentes, mediante un trabajo de investigación alineado al eje Migración, Educación y Desarrollo, en un evento académico internacional.',
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
            //PUBLICACIONES
            ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Publicaciones de las y los estudiantes del Diplomado en Desarrollo Transfronterizo con enfoque Sostenible',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        '"3 Generaciones"',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Primera Generación',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Revista Iberoamericana de Investigación Educativa (RIIED)',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                      child: Image.asset(
                        'assets/tablapublicaciones1.png',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Revista Atenas 2021',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                      child: Image.asset(
                        'assets/tablapublicaciones2.png',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Segunda Generación',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Revista Iberoamericana de Investigación Educativa (RIIED)',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                      child: Image.asset(
                        'assets/tablapublicaciones3.png',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Revista Entrevista Académica Electrónica 2022',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                      child: Image.asset(
                        'assets/tablapublicaciones4.png',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Revista Atenas 2022',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                      child: Image.asset(
                        'assets/tablapublicaciones5.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //UNIDAD DE VINCULACION DOCENTE
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Unidad de Vinculación Docente',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
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
                              'De acuerdo con la definición y opinión del actual rector, Dr. Ángel René Estrada Arévalo, las Unidades de Vinculación Docente, son instrumentos flexibles que permiten adaptar los planes de estudio a la solución de problemas en el desarrollo económico, social y cultural; concebidas para enriquecer las currículas, son procesos que al mismo tiempo que influyen en los fenómenos sociales presentan efectos positivos en lo académico y dinamizan las funciones sustantivas.\n\nFunción de docencia: En docencia, las UVD ligan la actividad de los profesores con el sector externo y retroalimentan inmediatamente los planes de estudio al analizar los fenómenos sociales.\n\nFunción investigación: El nexo entre la formación teórica que el estudiante recibe en aulas y talleres y las actividades de servicio que efectúan profesores y alumnos se establece aplicando el método científico, concebido como un instrumento para el estudio de los problemas y la adquisición del conocimiento.\nFunción extensión: Para superar el carácter burocrático que ha adquirido el servicio social es necesario retomar su significado curricular, al lado de la docencia y la investigación.',
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
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Primera Fase: Planificación',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
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
                              'El punto de partida es la identificación de los problemas específicos, planteados por grupos y organizaciones sociales que requieren acciones duraderas y efectivas para su transformación.\n\nPosteriormente los profesores caracterizan la problemática en términos científicos, la correlacionan con asignaturas o módulos de los planes de estudio y trasladan a un plano científico educativo, sujeto a un proceso de investigación-acción, se definen los objetivos docentes en cuanto a los conocimientos que los estudiantes deben adquirir para explicar el problema e investigar para el diseño de instrumentos de obtención de información y el servicio mediante actividades técnicas.',
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
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Segunda Fase: Ejecución',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
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
                              'El desarrollo de las Unidades de Vinculación Docente debe insertarse en la programación académica de las asignaturas o módulos y formar parte de ellos, ajustando con flexibilidad lo programado a la práctica.\n\nEn esta fase un punto de gran importancia es la evaluación, en ella se realizan seminarios de integración global del proceso, objetivos, participación de alumnos, docentes, grupos sociales y de las organizaciones particulares. En este espacio, y con una metodología adecuada, es posible retroalimentar los planes de estudio y conocer la pertinencia social de la formación social universitaria.',
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
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'UVD: Competencias digitales en la Educación de Personas Jóvenes y Adultas (EPJA)',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/Captura_de_pantalla_2023-05-27_a_las_183932.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Propósito',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
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
                              'Analizar el nivel de dominio de las competencias digitales de personas jóvenes y adultas desfavorecidas que habitan en la zona transfronteriza de Chiapas y Guatemala, para proponer iniciativas de alfabetización y ciencia abierta, que permitan disminuir la brecha digital.',
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
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Participan docentes y alumnos:',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
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
                              'Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (UNACH-CEDES)\n- Dra. Andrea Mena Álvarez\n- Dr. Dorian Francisco Gómez Hernández\n- Dr. Julio Guillén Velázquez',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Programa de Ejercicio Profesional Supervisado Multidisciplinario (EPSUM) de la Universidad de San Carlos de Guatemala (USAC)\n- Mtro. Luis Alfredo Arias Hernández',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Facultad Latinoamericana de Ciencias Sociales (FLACSO-Guatemala)\n- Mtra. María del Rosario Martínez Álvarez',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Lic. En Seguridad Alimentaria de la Escuela de Sistemas Alimentarios, UNACH, Tapachula, Chiapas\n- Dr. Ángel René Estrada Arévalo',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Licenciatura en Ingeniería en Desarrollo y Tecnologías de Software de la Facultad De Negocios Campus IV UNACH, Tapachula\n- Mtro. Jesús Arnulfo Zacarias Santos',
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
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Secretaría de Identidad Responsabilidad Social Universitaria UNACH (Istmo-Costa y Soconusco)\n- Mtro. Esteban Sánchez Martínez',
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
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Comienzo de la UVD',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
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
                              'El pasado 26 de junio de 2023, dio inicio en Unión Juárez, Chiapas; México la Unidad de Vinculación Docente (UVD); a cargo del Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES), de la Universidad Autónoma de Chiapas (UNACH) y el Instituto de Cooperación Internacional de la Asociación Alemana de Educación de Adultos (DVV), con la participación del Ayuntamiento Municipal de Unión Juárez, la Escuela de Sistemas Alimentarios, la Facultad de Negocios Campus IV UNACH, Tapachula, la Secretaría de Identidad Responsabilidad Social Universitaria UNACH (Tuxtla e Istmo-Costa y Soconusco); todas las instituciones anterior unidas con el propósito de identificar el acceso y uso de las tecnologías de la información y la comunicación de la población que habita en la zona transfronteriza entre México (Chiapas) y Guatemala.\n\nLa finalidad es impulsar políticas públicas que permitan alfabetizar digitalmente a la población y con ello disminuir la brecha digital.\nParticipan docentes y estudiantes de la Licenciatura en Estadística y Sistemas de Información (CEDES) y de la Licenciatura en Ingeniería y Desarrollo de Tecnologías de Software (Campus Tapachula).\nConsulta la noticia en el siguiente enlace: https://cedes.unach.mx/index.php/component/k2/item/320-alfabetizacion-digital-para-personas-jovenes-y-adultas-en-zonas-transfronterizas',
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
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/356612451_6417486591606261_1118302505330810850_n.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/355487785_6417407551614165_5508088582499535624_n.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/355128332_6417531221601798_8252776413483556887_n.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/356230159_6417407761614144_7648504715439975002_n.png',
                        height: 250,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //APP CAPJA
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 15),
                      child: Text(
                        'Aplicación Móvil: Ciencia Abierta para Personas Jóvenes y Adultas',
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
                              'Durante el 2022 y el 2023, se diseña la Aplicación Móvil: Ciencia Abierta para Personas Jóvenes y Adultas. Es una aplicación digital para la planificación y evaluación de las ofertas educativas de los socios de DVV, elaborada de manera participativa entre las organizaciones contrapartes y aliados estratégicos.',
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
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Descripción',
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
                              'Desarrollo de la Interfaz gráfica de la APP, que contiene hipervínculos a las páginas oficiales de las contrapartes. Tiene el propósito de proveer información de las ofertas educativas, a través, de los distintos medios electrónicos de las contrapartes y aliados estratégicos de DVV-International. Con la CAPJA, se dan conocer los beneficios, plan de estudios, campo laboral y demás características que ofrecen los programas educativos ofertados. La aplicación se encuentra lista en su primera etapa, se continua con el proceso de actualización de la información de cada una de las contrapartes y aliados.\n\nLa aplicación "Ciencia Abierta para Personas Jóvenes y Adultas" es una plataforma interactiva que busca acercar la ciencia de una manera lúdica y educativa a la población. A través de la aplicación, los usuarios pueden acceder a una gran variedad de contenidos científicos, noticias y recursos de aprendizaje, diseñados específicamente para personas jóvenes y adultas con diferentes niveles de conocimiento.\nLa aplicación cuenta con una interfaz amigable y fácil de usar, que permite a los usuarios explorar diferentes áreas de la Educación. Además, la aplicación ofrecerá herramientas interactivas, juegos y desafíos que fomentan el aprendizaie y la curiosidad.\n\nLa aplicación también incluye una sección de noticias científicas actualizadas, para que los usuarios estén al día en los últimos avances y descubrimientos en el mundo de la ciencia, así como de las actividades que realizan las contrapartes y aliados de DVV-International. Además, ofrece recursos de aprendizaje adicionales, como videos educativos, infografías y artículos especializados, para aquellos que buscan profundizar su conocimiento en áreas específicas.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ]
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Disponible para su descarga en iOS y Android:',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/images.png',
                        height: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/share_google_play_logo.png',
                        height: 80,
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

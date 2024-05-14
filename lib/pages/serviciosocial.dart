import 'package:flutter/material.dart';
import 'home_screen.dart';

class ServicioSocial extends StatelessWidget {
  const ServicioSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Servicio Social'),
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
                  Tab(text: 'Servicio Social'),
                  Tab(text: 'Objetivos'),
                  Tab(text: 'Misión'),
                  Tab(text: 'Visión'),
                  Tab(text: 'Modalidades'),
                  Tab(text: 'Elementos básicos de servicio social'),
                  Tab(text: 'Estatuto'),
                  Tab(text: 'Contacto'),
                ],
              ),
            ),
          ),
        ),
        ),
        body: TabBarView(
          children: [
            //SERVICIO SOCIAL
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
                              'El servicio social tiene el objetivo de acercar al alumno al campo laboral, de destacar las habilidades que el estudiante posee para así se competente, entonces es aquí donde el servicio social deja de ser solo un requisito para obtención del título profesional y se enmarca bajo una premisa de contribución al desarrollo de la sociedad.',
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
            //OBJETIVOS
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
                              'El Centro de Estudios para el Desarrollo Municipal y Políticas Públicas cuenta con la actividad de Servicio Social que cumple con los objetivos siguientes:',
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
                              'Objetivos Generales:',
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
                              'Fortalecer las actividades de Servicio Social para que tenga mayor impacto y contribuyan al desarrollo de la Responsabilidad Social Universitaria Vinculándola con los sectores Social, productivo, gubernamental y educativo, en donde los estudiantes pongan en práctica sus conocimientos, habilidades, destrezas, aptitudes y valores que coadyuven al desarrollo social y humano de la región.',
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
                              'Objetivos Específicos:',
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
                              'Contribuir al desarrollo del Modelo educativo y académico de la Universidad, para fortalecer la formación integral de las y los estudiantes, poniendo en práctica sus conocimientos, habilidades, destrezas, aptitudes y valores adquiridos durante su formación disciplinaria a través del servicio social.\n- Desarrollas la Responsabilidad Social Universitaria con los sectores social, productivo, gubernamental y educativo del Estado, aplicando los beneficios de la ciencia, humanidades, tecnología y cultura.\n- Reconocer las experiencias y buenas prácticas del servicio social de las y los estudiantes para su formación, desarrollo profesional e inserción en el campo laboral.\n- Fomentar la atención a los Objetivos del Desarrollo Sostenible en el cumplimiento del Servicio Social.',
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
            //MISIÓN
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
                              'Misión',
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
                              'El servicio social es una herramienta educativa y una práctica integra comprometida con la sociedad, que permite consolidar la formación académico, es también un factor estratégico en la tarea de impulsar el desarrollo municipal, regional y estatal, así como para mejorar los mecanismos que conducen a disminuir las desigualdades sociales, propiciando mayores oportunidades para un desarrollo individual y colectivo.',
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
            //VISIÓN
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
                              'Visión',
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
                              'El servicio social contribuye en la formación integral de los estudiantes y permite consolidar la formación académica, desarrollar valores, favorecer la inserción al mercado de trabajo y la aplicación del conocimiento científico, humanístico, tecnológico y cultural al promover el acercamiento activo de la universidad con la sociedad al mismo tiempo, coadyuva en la solución de los problemas actuales del desarrollo.',
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
            //MODALIDADES
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
                              'La UNACH ha propuesto cinco modalidades para la prestación de servicio social, que son; comunitario, municipal, interuniversitario y productivo, las cuales se desarrollan en dos periodos del año.\n\nA) ENERO – JULIO.\nB) JULIO- DICIEMBRE.',
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
                              'Actividades del responsable',
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
                        'assets/serviciosocialp.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //ESTATUTO
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
                              'Servicio Social es el, puente que vincula a la universidad con la sociedad. Surgió con el propósito de apoyar a la población más vulnerable y fortalecer la formación integral de las y los estudiantes. Es, también, un instrumento esencial que articula la función sustantiva de docencia con la extensión y vinculación; relaciona al estudiante con su entorno y devuelve los aportes de la sociedad a la educación superior, fomentando valores en el prestador social de una conciencia solidaria y compromiso con la sociedad que pertenece.\n\nEl servicio Social se define como un conjunto de actividades teórico prácticas de carácter temporal y obligatorio que realizan los estudiantes que hayan cumplido el setenta por ciento de créditos. Es requisito previo para obtener el título o grado que le permiten aplicar sus conocimientos, habilidades, destrezas y aptitudes, en beneficio de la sociedad y el Estado y fomenta los valores de la solidaridad. En su desarrollo, integra la docencia, investigación, vinculación y difusión de la cultura; permite confrontar y consolidar los conocimientos adquiridos durante la formación académica y facilitar una aproximación a su futuro desempeño profesional. Así mismo, retroalimenta la actualización y pertinencia de los planes y programas de estudio y contribuye al desarrollo social y humano de la región.\n\nEl Programa Institucional de Servicio Social en la SECCIÓN DÉCIMA SEGUNDA; en su artículo 46. El Servicio Social es la actividad de carácter obligatorio y temporal que de acuerdo con su perfil profesional desempeñarán las personas estudiantes universitarias o pasantes de la Universidad Autónoma de Chiapas, que respectivamente se encuentren realizando o realizaron estudios de Licenciatura escolarizada, Licenciatura no escolarizada, Licenciatura mixta, Profesional Asociado o Asociada, Técnico Superior Universitario, Técnica Superior Universitaria, Profesional Superior Universitario u otros equivalentes, conforme a las siguientes directrices:\nI. Las modalidades, planes y programas del Servicio Social deben cumplir con los objetivos de la Universidad, tomando en cuenta los criterios a seguir para quienes cursen carreras virtuales.\nII. El servicio social deberá ser previo convenio o acuerdo específico celebrados en los términos señalados en el presente ordenamiento y demás Legislación Universitaria aplicable.\nIII. Deberá prestarse dentro de los programas que al efecto se convengan con los sectores público, privado y social.\nIV. Deberá prestarse durante un período no menor de seis meses ni mayor de doce meses, quedando determinado el mismo por las características del programa al que esté adscrito la prestadora y el prestador y su duración no podrá ser menor de 480 horas. La prestación de servicio social debe ser preferentemente continua, a efecto de que pueda cumplir sus objetivos.\nV. El servicio social que realicen las y los prestadores deberá realizarse preferentemente en el territorio de la República Mexicana, prioritariamente en el interior del Estado de Chiapas, en beneficio de la sociedad.\nVI. Las demás que señale la normatividad de servicio social que resulte aplicable.',
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

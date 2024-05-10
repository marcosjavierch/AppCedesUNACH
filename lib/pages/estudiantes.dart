import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Estudiantes extends StatelessWidget {
  const Estudiantes ({Key? key}) : super(key: key);

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
      length: 8,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Estudiantes'),
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
                    Tab(text: 'Movilidad'),
                    Tab(text: 'Tutorías'),
                    Tab(text: 'Becas'),
                    Tab(text: 'Gestión Escolar'),
                    Tab(text: 'Servicios Médicos'),
                    Tab(text: 'Une-t'),
                    Tab(text: 'Servicio Social'),
                    Tab(text: 'Beneficios de la Tarjeta TUI'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            //MOVILIDAD
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Movilidad',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'La movilidad es la posibilidad de cursar un periodo de estudios en una institución nacional o extranjera, con la cual exista un convenio establecido. La movilidad implica tu incorporación como estudiante en otra institución, sin perder tus derechos como alumno de la UNACH.\n\n¡Tú tienes esos beneficios! ¡Aprovéchalos!Mas información: Secretaría Auxiliar de Relaciones Interinstitucionales de la Universidad Autónoma de Chiapas.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            )

                          ],
                        ),
                      ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            _launchURL(
                                "sari.unach.mx/");
                          },
                          child: const Text(
                            'https://sari.unach.mx/',
                            style: TextStyle(
                              color: Color(0xFF18386B)
                            ),
                          )
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://cedes.unach.mx/images/movilidadYeyetsi/1.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://cedes.unach.mx/images/movilidadYeyetsi/2.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://cedes.unach.mx/images/movilidadYeyetsi/3.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://cedes.unach.mx/images/movilidadYeyetsi/4.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://cedes.unach.mx/images/movilidadYeyetsi/5.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: const [
                          Text(
                            'La Lic. Yeyetsi Cigarroa Martínez, egresada de la Licenciatura de Estadística y Sistemas de Información; participó en la convocatoria del Programa Interinstitucional para el fortalecimiento de la Investigación y Posgrado del Pacifico (Programa DELFIN) y fue seleccionada para realizar una estancia en la Facultad de Ingeniería mecánica y electrónica de la Universidad Autónoma de Nuevo León, en Monterrey, N.L. en el XXII Verano Científico; obteniendo gratos beneficios de la experiencia exitosa en la universidad Regiomontana.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          )

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.network(
                        'https://cedes.unach.mx/images/MTRA_DULCE_MARA_REYES_ROS.png',
                        height: 250,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //TUTORIAS
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
                              'La tutoría es el proceso de acompañamiento que tiene como fin orientar y apoyar a los estudiantes durante su formación profesional, bajo la responsabilidad y atención de docentes competentes y formados para esta función.\n\nLas modalidades de tutoría son las formas para realizar la acción tutorial, clasificándose de la siguiente forma:',
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
                        'A) Individual\nB) Grupo pequeño\nC) Grupo focalizado\nD) Grupo-clase\nE) A distancia\nF) Entre iguales',
                        style: TextStyle(
                            fontSize: 16.0,
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
                              'El Tutor(a) es el (la) docente formado para dar acompañamiento al estudiante durante su estancia en la Universidad; se caracteriza por su disposición personal y ética, comprometido para guiar y apoyar el desarrollo integral de los estudiantes bajo su tutela, como una función inherente a su rol de educador.',
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
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Informes',
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
                              'Mtra. Fátima Guadalupe Laguna Vázquez\nCel: 9612606987\nCorreo: patcedes@unach.mx\nPara más informes visite:\nhttps://secacad.unach.mx/index.php/formacion-educativa#tutorias-2',
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
            //BECAS
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
                              'Este espacio difunde las becas que emiten el Gobierno federal y otras instancias gubernamentales en sus dos modalidades:\n\n- Presencial\n- A distancia\n(Alumnos del Centro de Estudios para el Desarrollo Municipal y Politicas Públicas)\n\nPara más información, visita:\nhttps://becas.unach.mx/',
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
                      padding: const EdgeInsets.only(top: 20.0, left: 15),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'La UNACH\n',
                              style: TextStyle(fontWeight: FontWeight.bold), 
                            ),
                            TextSpan(
                              text: 'A través de este Centro, se proporciona el servicio de acompañamiento al alumno en dudas o revisión del registro; así como de verificar en el Sistema de la UNACH SIBEES el trámite individual del alumno en caso de requerir apoyo.',
                            ),
                          ],
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
                              text: 'El alumno\n',
                              style: TextStyle(fontWeight: FontWeight.bold), 
                            ),
                            TextSpan(
                              text: '- Seleccionará la convocatoria\n- Revisará los requisitos y criterios para ingresar al programa de becas de su elección\n- Registrará su ingreso en tiempo y forma en el Sistema SUBES (Sistema Único de Beneficiarios de Educación Superior) que pertenece al gobierno federal\n- Actualizará su información en el Sistema SIAE\n\n\nPara más informes:\ncontrolescolar.cedes@unach.mx\n',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //GESTION ESCOLAR
            ListView(
              children: [
                Column(
                  children: [
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
                              text: 'Control Escolar\n',
                              style: TextStyle(fontWeight: FontWeight.bold), 
                            ),
                            TextSpan(
                              text: 'Es el área que se encargar de crear expedientes de los alumnos que ingresan a la licenciatura que oferta el Centro de Estudios para el Desarrollo Municipal y Políticas Públicas, así como de gestionar los trámites a lo largo de su estancia educativa.',
                            ),
                          ],
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
                              text: 'Servicios:\n',
                              style: TextStyle(fontWeight: FontWeight.bold), 
                            ),
                            TextSpan(
                              text: '1.- Historial académico completo o ligero\n2.- Trámite y entrega de Tarjeta Universitaria Inteligente (TUI)*\n3.- Reposición de credencial\n4.- Genera constancia de estudios (sencilla o con historial de calificaciones)\n5.- Expide boletas de calificaciones.\n6.- Trámite de baja temporal parcial, completa o definitiva acorde los periodos correspondientes\n *Ver beneficios de tu tarjeta TUI',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Cómo Realizar el Pago de Servicios',
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
                              text: '1.- Ingresar al link https://sysweb.unach.mx/DSIA/#Alumnos\n2.- En el apartado alumnos dar clik en Pagos de Servicios (Ficha Referenciada)\n3.- Ingresar su número de ficha o matrícula\n4.- Verificar que sus datos sean correctos\n5.- Seleccionar el servicio a pagar\n6.- Agregar y proceder a generar la ficha de pago\n7.- Seleccionar método de pago\n\nNota: Su pago se verá reflejado en el Sistema UNACH (si paga en ventanilla, su pago se verá reflejado las próximas 24 horas, si paga con tarjeta de débito su pago se verá reflejado de manera inmediata). Una vez reflejado el pago se procede al trámite solicitado.\n\nPara más información consulta al correo:\ncontrolescolar.cedes@unach.mx\n',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //SERVICIOS MEDICOS
            ListView(
              children: [
                Column(
                  children: [
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
                              text: 'Seguro Facultativo\n',
                              style: TextStyle(fontWeight: FontWeight.bold), 
                            ),
                            TextSpan(
                              text: 'El estudiante universitario tiene el derecho de ser afiliado al IMSS como servicio médico gratuito durante su formación académica hasta su egreso. Este trámite es realizado por el personal de Control Escolar del Centro.\n\nEn caso de contar con otro servicio médico o de no requerir afiliarse con la universidad, el alumno tiene la opción de “Rechazar la afiliación" en un formato de baja voluntaria, pudiendo solicitar su afiliación en cualquier momento en tanto esté matriculado.',
                            ),
                          ],
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
                              text: 'Afiliación a Seguro Facultativo\n',
                              style: TextStyle(fontWeight: FontWeight.bold), 
                            ),
                            TextSpan(
                              text: '1.- El alumno solicita la asignación de su número de seguro social en el siguiente link http://www.imss.gob.mx/tramites/imss02008 \n2.- Si ya estuvo afiliado enviar su constancia de vigencia activa en el siguiente link: https://serviciosdigitales.imss.gob.mx/gestionAsegurados-web-externo/vigencia \n3.- Los documentos reflejados en el punto 1 y punto 2 deben ser enviados a control escolar al correo controlescolar.cedes@unach.mx para recibir información del trámite. \n4.- Esperar respuesta de control escolar, imprimir y llevar a la unidad más cercana de su localidad con los requisitos solicitados por el IMSS para el trámite de su carnet. \n5.- Enviar copia del carnet a control escolar.\n\nPara más información consultar con:\nMtra. Edit del Socorro García Abadía\nResponsable de Seguro Facultativo\nedit.garcia@unach.mx\n',                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //UNE-T
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Para la Coordinación de Innovación Tecnológica para la Educación, una parte fundamental en su desempeño como área de innovación es la creación de estructuras digitales que permitan al docente y al estudiante converger en mundos paralelos empleando las tecnologías de información.\n\nEs por ello que se han desarrollado sistemas informáticos  que faciliten la práctica docente.\n\nLos sistemas de información que se desarrollan son de carácter académico y administrativo, siendo los sistemas académicos los que están completamente dirigidos a crear ambierntes digitales de aprendizaje para el estudiante.\n\nPara ello se creó "Une-T", que es la Intranet universitaria que le permite a los docentes y estudiantes converger en un mundo digital, en el que los procesos administrativos y académicos son de fácil acceso bajo el esquema de una red social; con el tecleo de una llave única de acceso a los servicios digitales de la UNACH, une-t permite navegar por el sistema de cursos en apoyo a las licenciaturas presenciales: educa-t; consultar documentos que previamente han sido digitalizados por los docentes: lee-t; acceder a cursos para convertirse en docente digital: digitaliza-t; crear su propio blog universitario: bloguea-t; o participar dentro de los MOOCs (Massive Open On-line Course); al mismo tiempo pueden acceder a sistemas como el SIAE (Sistema Institucional de Administración Escolar), el sistema de tutorias, el sistema de pagos en linea (Sysweb), tener acceso a la biblioteca digital, la navegación interna del Portal Web institucional, enterarse al momento de las noticias de la Institución y convivir con sus compañeros al compartir fotos, videos, audios e imágenes, crear grupos, consultar su correo electrónico institucional, establecer relaciones de amistad con personas de otras escuelas y facultades, sin dejar de lado que se puede dejar huella en el camino. une-t es un sistema en el que no se requiere más que entrar desde el portal de la UNACH y acceder, para que integre todas las opciones que se tienen para la comunidad universitaria.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            )

                          ],
                        ),
                      ),
                      
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'http://www.uv.unach.mx/assets/img/prueba/unet_cont.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            _launchURL(
                                "http://www.une-t.unach.mx/");
                          },
                          child: const Text(
                            'Ingresar al sitio',
                            style: TextStyle(
                              color: Color(0xFF18386B)
                            ),
                          )
                        )
                    ),
                  ],
                ),
              ],
            ),
            //SERVICIO SOCIAL
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Es una actividad de carácter temporal y obligatorio, que deben realizar los estudiantes pasantes de las carreras técnicas y profesionales, como requisito para obtener su Título Profesional. Consiste en la aplicación de los conocimientos adquiridos durante la formación académica del alumno, a fin de aportar un beneficio a la comunidad y el entorno, ya sea de tipo científico, tecnológico, económico y cultural.\n\nBásicamente se fundamenta en los siguientes objetivos:\n- Vinclular a la Universidad con las necesidades sociales\n- Consolidar la formación académica y capacitación profesional de los alumnos\n- Fomentar en el prestador una conciencia de solidaridad.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            )
                          ],
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
                              text: 'Misión\n',
                              style: TextStyle(fontWeight: FontWeight.bold), 
                            ),
                            TextSpan(
                              text: 'El servicio social es una herramienta educativa y una práctica íntegra comprometida con la sociedad, que permite consolidar la formación académica, es también un factor estratégico en la tarea de impulsar el desarrollo municipal, regional y estatal, así como para mejorar los mecanismos que conducen a disminuir las desigualdades sociales, propiciando mayores oportunidades para un desarrollo individual y colectivo.',
                            ),
                          ],
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
                              text: 'Visión\n',
                              style: TextStyle(fontWeight: FontWeight.bold), 
                            ),
                            TextSpan(
                              text: 'El servicio social contribuye en la formación integral de los estudiantes y permite consolidar la formación académica, desarrollar valores, favorecer la inserción al mercado de trabajo y la aplicación del conocimiento científico, humanístico, tecnológico y cultural al promover el acercamiento activo de la universidad con la sociedad al mismo tiempo, coadyuva en la solución de los problemas actuales del desarrollo.',
                            ),
                          ],
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
                              text: '\nPROCEDIMIENTO\n',
                              style: TextStyle(fontWeight: FontWeight.bold), 
                            ),
                            TextSpan(
                              text: '¿Quieres prestar el servicio social?\n\n1. Inicialmente debes cumplir con el 70% de créditos, este requisito lo alcanzas cuando estas cursando 5º y 6º semestre de la licenciatura.\n\n2. Si es tu caso, recibirás la convocatoria correspondiente por correo electrónico, donde se te explicará todo el procedimiento a cumplir\n\n3. Deberás inscribirte en línea en el Sistema de Innovación del Servicio Social Universidad Responsable (SISSUR) a través de la página serviciosocial.unach.mx\n\n4. Contar con tres fotografías tamaño credencial de frente, ovalo en papel autoadherible, blanco y negro, vestimenta blanca, cabello recortado, sin accesorios (lentes, aretes, etc.).',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Los periodos para prestar el servicio son dos en el año.\n\n- "A" durante los meses de ENERO - JULIO\n\n- "B" durante los meses de JULIO - DICIEMBRE\n\n- El Servicio Social debe prestarse en un periodo mínimo de 6 meses (4 horas diarias), máximo de 2 años, teniendo una dureción mínima de 480 horas, (establecido en la constitución política méxicana y legislación universitaria) que deberán cumplirse en los programas y modalidades de Servicio Social.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Las modalidades son:\n\n- Público: comprende a las instituciones de gobierno federal y estatal.\n\n- Intrauniversitario: Comprende los programas y/o proyectos organizados por las unidades académicas de la propia universidad.\n\n- Municipal: comprende aquellas localidades o municipios en donde se pretende atender problemáticas sociales.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              '*Recuerda que todo el proceso administrativo para poder cumplir con el servicio social es a través del SISSUR.\n\n5. Para inscribirte como solicitante en el SISSUR, debes ingresar como usuario usando tu correo institucional (ejemplo: V180015) y tu contraseña correspondiente.\n\n6. Al registrarte, debes descargar el formato de la hoja de inicio, imprimirlo, colocar una fotografía y firmar para su posterior validación en la coordinación de Extensión de tu centro de estudios.\n\n7. Simultáneamente, debes considerar la selección de la modalidad y dependencia donde prestaras el servicio, para integrar el catálogo de proyectos y programas.\n\n8. Posteriormente ingresas nuevamente al SISSUR para efectuar la auto asignación, enseguida descargas el oficio de comisión que deberás imprimir para presentar el primer día de tu servicio social en la dependencia oficial.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            )
                          ],
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
                              text: '\nAl finalizar el servicio deberás\n',
                              style: TextStyle(fontWeight: FontWeight.bold), 
                            ),
                            TextSpan(
                              text: '1. Solicitar tu carta de terminación* a la Unidad receptora de acuerdo a la guía GI-523-02\n\n2. Elaborar tu informe final de acuerdo a la guía GI-523-01\n\n3. Responder la encuesta disponible en serviciosocial.unach.mx/encuesta y solicitar a la dependencia que responda la encuesta correspondiente\n\n4. Realizar el pago de la “Constancia de servicio social” L0427 disponible en sysweb.unach.mx\n\n5. Entregar documentación original final al responsable de Servicio Social de tu centro de estudios de:\n\n- Carta de terminación con firma y sello original\n\n- Caratula o portada del informe final con firma y sello original del responsable del programa\n\n- Dos fotografías tamaño credencial de frente, ovalo en papel autoadherible, blanco y negro, vestimenta blanca, cabello recortado, sin accesorios (lentes, aretes, etc.).\n\n\n1. Subir los archivos digitales en formato PDF al SISSUR a través de serviciosocial.unach.mx de:\n\n- Informe final con carátula firmada y sellada\n\n- Recibo de pago oficial de la UNACH\n\n- Carta de terminación\n\nPara mayores informes:\n\nMtra. Edit del Socorro García Abadía\nResponsable de Servicio Social\nserviciosocial.cedes@unach.mx\n\n*La carta de terminación debe ir dirigida a la C. Dra. Andrea Mena Álvarez.- Coordinadora General del CEDES\nCon copia a Dr. Florentino Pérez Pérez.- Director de Vinculación y Servicio Social de la DGEU y Mtra. Edit del Socorro García Abadía - Responsable de Servicio Social del CEDES\n\nFORMATOS GI-523-01 Y GI-523-02 (descargables en el SISSUR)',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/SS2.png',
                        height: 250,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //BENEFICIOS TARJETA TUI
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/catalogodeservicios.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Con tu Tarjeta Universitaria Inteligente revisa los beneficios que obtienes:',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            _launchURL(
                                "https://extension.unach.mx/app/index.php");
                          },
                          child: const Text(
                            'https://extension.unach.mx/app/index.php',
                            style: TextStyle(
                              color: Color(0xFF18386B)
                            ),
                          )
                        )
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

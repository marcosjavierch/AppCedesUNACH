import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class AvisosDePrivacidad extends StatelessWidget {
  const AvisosDePrivacidad ({Key? key}) : super(key: key);

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
      length: 3,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          title: const Text('Avisos de Privacidad'),
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
                    Tab(text: 'Avisos de Privacidad Integral UNACH'),
                    Tab(text: 'Avisos de Privacidad CEDES Simplificada'),
                    Tab(text: 'Aviso de privacidad CEDES Integral'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            //AVISO PRIV INT UNACH
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Image.network(
                        'https://www.unach.mx/images/documentos/aviso_de_privacidad/rectoria/Aviso_Privacidad_Simplificada.jpg',
                        height: 490,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("unach.mx/images/documentos/aviso_de_privacidad/rectoria/Aviso-Privacidad-Integral_22.pdf");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Aviso de Privacidad Integral"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL("www.unach.mx/images/documentos/aviso_de_privacidad/rectoria/Aviso_Privacidad_Simplificada.pdf");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF18386B)),
                        ),
                        child: const Text("Aviso de Privacidad Simplificada"),
                      ),
                    ),
                  ],
                ),
              ],
            ),

          //AVISO PRIV CEDES
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
                              'Aviso de Privacidad Simplificada\nPágina Oficial del Centro de Estudios para el Desarrollo Municipal y Políticas Públicas de la Universidad Autónoma de Chiapas\n\nEl Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES), de la Universidad Autónoma de Chiapas (UNACH), con domicilio en Privada Laureles N°. 192, Colonia Jardínes de Tuxtla, Tuxtla Gutiérrez, Chiapas, CP. 29020, es responsable del tratamiento y uso de los datos personales que nos proporcionen y sean recabados por cualquier medio, los cuales serán protegidos conforme a lo dispuesto por la Ley General de Protección de Datos Personales en Posesión de Sujetos Obligados (LGPDPPSO) y la Ley de Protección de Datos Personales en Posesión de Sujetos Obligados del Estado de Chiapas (LGPDPPSOCHIS), y demás normatividad que resulte aplicable.\n\n1. Finalidad del tratamiento de los datos personales, distinguiendo aquellas que requieren el consentimiento del titular:\n\nEl Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES), de la Universidad Autónoma de Chiapas (UNACH), recabará y tratará sus datos personales de  identificación siempre y cuando se le sea solicitado para la utilización de este portal (www.cedes.unach.mx). Por lo que se aclara, que en este portal no se solicitarán datos personales sensibles, sin embargo, el CEDES-UNACH se compromete a trabajar bajos estrictas medidas de seguridad, garantizando en todo momento la confidencialidad de ellos.\n\nIII. Mecanismos, medios y procedimientos disponibles para ejercer los derechos ARCO:\nEl medio para poder ejercer sus derechos ARCO (Acceso, Rectificación, Cancelación y Oposición) de sus datos personales, serán directamente ante la Coordinación General del Centro de Estudios para el Desarrollo Municipal y Políticas Públicas de la Universidad Autónoma de Chiapas, ubicado en la dirección Privada Laureles N° 192, Colonia Jardines de Tuxtla, Tuxtla Gutiérrez, Chiapas, CP. 29020\n\nAsí mismo, también lo podrá realizar elaborando una solicitud de derechos ARCO a través de la Plataforma Nacional de Transparencia (www.plataformadetransparencia.org.mx).\n\n1. Sitio donde podrá consultar el aviso de privacidad integral\nhttps://cedes.unach.mx/index.php/avisos-de-privacidad\n\nActualizado al 01 de julio de 2022 por el Centro de Estudios para el Desarrollo Municipal y Políticas Públicas',
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

          //AVISO PRIV CEDES INT
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
                              'Aviso de Privacidad Integral\n\n1. Domicilio del responsable: El Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES), de la Universidad Autónoma de Chiapas (UNACH), con domicilio en Privada Laureles N°. 192, Colonia Jardines de Tuxtla, Tuxtla Gutiérrez, Chiapas, 29020, es responsable del tratamiento y uso de los datos personales que nos proporcionen y sean recabados por cualquier medio, los cuales serán protegidos conforme a lo dispuesto por la Ley General de Protección de Datos Personales en Posesión de Sujetos Obligados (LGPDPPSO) y la Ley de Protección de Datos Personales en Posesión  de Sujetos Obligados del Estado de Chiapas (LGPDPPSOCHIS), y demás normatividad que resulte aplicable.\n\n1. Los datos personales que serán sometidos a tratamiento, identificando aquellos que son sensibles:\n\nEl Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES), de la Universidad Autónoma de Chiapas (UNACH), recabará y tratará sus datos personales de identificación siempre y cuando se le sea solicitado para la utilización de este portal (www.cedes.unach.mx) o cualquier otro medio. Algunos datos que se pueden recopilar de relevancia son:\n- Información técnica del equipo con que accede al sitio (dirección IP, navegador que emplea, etc.)\n- Información estadística de navegación en el portal (archivos del sitio solicitados, palabras claves utilizadas en motores de búsqueda)\n- Información pertinente para el uso de encuestas en el\n- Información de contacto cuando usted desea comunicarse con los administradores de este portal (correo electrónico, nombre, asunto, teléfono, mensaje)\n\nPor lo que se aclara, que en este portal no se solicitarán datos personales sensibles, sin embargo, el CEDES-UNACH se compromete a trabajar bajos estrictas medidas de seguridad, garantizando en todo momento la confidencialidad de ellos.\n\n\nComo utilizamos las cookies\n\nUna cookie es una pequeña pieza de información que es enviada por el portal a su navegador. Las cookies se almacenan en el disco duro de su equipo y se utilizan para determinar sus preferencias cuando se conecta a los servicios de nuestro portal Institucional, así como para rastrear determinados comportamientos o actividades llevadas a cabo por usted. Las cookies permiten que los servicios que se ofrecen por la web, puedan adaptar su funcionamiento para que le respondan como un usuario diferente del resto que visitan el portal.\n\nUtilizamos cookies de registro del tráfico para identificar qué páginas se están visitando. Esto nos ayuda a analizar datos sobre el tráfico de la página web y mejorar la calidad de nuestro portal para adaptarlo y ajustar la información a las necesidades del cliente. Sólo utilizamos esta información para fines de análisis estadístico, por lo que después de esta acción los datos son eliminados automáticamente del sistema.\n\nEn general, las cookies nos ayudan a brindarle una mejor experiencia de navegación al momento de visitar nuestro portal. Una cookie de ninguna manera nos da acceso a su computadora o a cualquier información sobre usted, excepto los datos que usted decida compartir con nosotros.\n\nComo usuario, siempre puede elegir entre aceptar o rechazar las cookies. La mayoría de los navegadores web están configurados para aceptar automáticamente las cookies, pero usted puede modificar este permiso en el explorador para rechazar las cookies si usted así lo prefiere, aunque esto puede afectar la manera en que funciona este portal.\n\nFundamento legal que faculta al responsable para llevar a cabo el tratamiento de los datos personales:\nCon fundamento en los artículos 5, 14, 19, 20, 22, 23, 26, 31, 34, 37, 39 y demás correlativos, de la Ley de Protección de Datos Personales en posesión de Sujetos Obligados del Estado de Chiapas, así también los artículos 49, 56 y 59 de la Ley de Transparencia y Acceso a la Información Pública del Estado de Chiapas y demás normatividad aplicable.\n\n1. Finalidad del tratamiento de los datos personales, distinguiendo aquellas que requieren el consentimiento del titular:\n\nLa información que se recaba en este PORTAL se emplea para entender las necesidades de nuestros USUARIOS y de esta forma proveer un mejor servicio; y de manera particular se emplea para:\n\n- Registro de actividades.\n- Atención de problemas específicos del sitio y en su caso la corrección.\n- Identificación y seguimiento de comentarios que se reciban a través de las formas de contacto y correo electrónico del sitio web.\n- Utilizar la información para mejorar nuestros servicios en línea.\n\nSin embargo, se informa que el CEDES-UNACH no realizará transferencia alguna de los datos personales solicitados, salvo aquellas que sean necesarias para atender requerimientos de  información de una autoridad competente, que estén debidamente fundados y motivados, aplicando la normatividad de la Ley de Protección de Datos Personales en Posesión de Sujetos Obligados del Estado de Chiapas, Artículo 18.\n\n\n1. Mecanismos, medios y procedimientos disponibles para ejercer los derechos ARCO:\nEl medio para poder ejercer sus derechos ARCO (Acceso, Rectificación, Cancelación y Oposición) de sus datos personales, serán directamente ante la Coordinación General del Centro de Estudios para el Desarrollo Municipal y Políticas Públicas de la Universidad Autónoma de Chiapas, cuyos datos de contacto son:\n1. Nombre del titular: Andrea Mena Álvarez\n2. Domicilio: Privada Laureles N° 192, Colonia Jardines de Tuxtla, Tuxtla Gutiérrez, Chiapas, CP. 29020\n3. Correo Institucional: coordinacióngeneral@unach.mx\n4. Teléfono: 61-7-80-00 5541\n\nAsí mismo, también lo podrá realizar elaborando una solicitud de derechos ARCO a través de la Plataforma Nacional de Transparencia (www.plataformadetransparencia.org.mx).\n\n1. Medios a través de los cuales se comunicará cambios al Aviso de Privacidad:\n\nEl presente aviso de privacidad puede sufrir modificaciones, cambios o actualizaciones derivadas de nuevos requerimientos legales o por otras causas. Nos comprometemos a mantenerlo informado sobre los cambios que pueda sufrir el presente aviso de privacidad, a través de:\n- La Página Oficial del Centro: cedes.unach.mx\n- Unidad de transparencia\n- Correo Institucional (opcional)\n\n\n- En caso de incumplimiento a las obligaciones establecidas en la citada Ley, estas serán causas de responsabilidad administrativa, lo anterior de conformidad a lo dispuesto por el artículo 191, en donde es necesario hacer de conocimiento que, en caso de sanciones de carácter económico, estas no pueden ser cubiertas con recursos públicos.\n\n- Al existir vulneraciones de seguridad por hackeo o robo de las bases de datos que contengan datos personales en posesión del CEDES-UNACH, el responsable de la información deberá informar a la Unidad de Transparencia, para que este realice el comunicado oficial al titular de los mismos y al Instituto Garante, sobre la naturaleza del incidente de los datos personales comprometidos, así como, las acciones preventivas y correctivas a realizar para evitar futuras vulneraciones, lo anterior de conformidad por lo dispuesto en los artículos 52, 53, 54 y demás correlativos de la Ley de Protección de Datos Personales en Posesión de Sujetos Obligados del Estado\n\n\nActualizado al 01 julio de 2022 por el Centro de Estudios para el Desarrollo Municipal y Políticas Públicas',
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

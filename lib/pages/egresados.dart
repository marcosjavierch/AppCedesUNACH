
import 'package:unachcedes/widgets/tabla_egresados.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Egresados extends StatelessWidget {
  const Egresados ({Key? key}) : super(key: key);

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
          centerTitle: true,
          title: const Text('Egresados'),
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
                  tabs: [
                    Tab(text: 'Titulación'),
                    Tab(text: 'Cédula Profesional'),
                    Tab(text: 'Credencial'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            //TITULACION
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'REQUISITOS PARA LA TOMA DE PROTESTA',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.start,
                            text: const TextSpan(
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'a. Carta de pasante. ',
                                ),
                                TextSpan(
                                  text: 'original y 2 copias',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: '\n\nb. Certificado de estudios. ',
                                ),
                                TextSpan(
                                  text: 'original y 2 copias',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: '\n\nc. Constancia de servicio social. ',
                                ),
                                TextSpan(
                                  text: 'original y 2 copias',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: '\n\nd. Formular solicitud por escrito al coordinador de este centro de estudios,  autorización para presentar el examen profesional, si optó por la tesis, seminario de titulación o acreditó el 50% de la maestría autorizada por mérito académico solicite fecha de toma de protesta. ',
                                ),
                                TextSpan(
                                  text: 'original y copia',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: '\n\ne. Tres fotografías tamaño título, fondo blanco y de frente, que sean adheribles, en un sobre tamaño 9x16 cms.',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'MUJERES',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: const [
                          Text(
                            '-Vestimenta formal: saco sin estampados, blusa de cuello blanco y sin escote\n\n-Sin adornos \n\n-Maquillaje discreto',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'HOMBRES',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: const [
                          Text(
                            '-vestimenta formal: saco oscuro, camisa blanca y corbata lisa, sin estampados\n\n-bigote y/o barba recortados',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.start,
                            text: const TextSpan(
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                              children: [
                                TextSpan(
                                  text: 'f. Acta de nacimiento actualizada (ó 5 años a la fecha) ',
                                ),
                                TextSpan(
                                  text: 'original y 2 copias',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: '\n\ng. Constancia de acreditación del segundo nivel de inglés, expedido por la escuela de lenguas de la UNACH. ',
                                ),
                                TextSpan(
                                  text: 'original y 2 copias',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: '\n\nh. Constancia de cultura y deporte expedido por la UNACH. ',
                                ),
                                TextSpan(
                                  text: 'original y copia',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: const [
                          Text(
                            'Para realizar pagos ingresar a la página: ',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 14.0,
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
                                  "www.sysweb.unach.mx");
                            },
                            child: const Text(
                              'www.sysweb.unach.mx',
                              style: TextStyle(
                                  color: Color(0xFF18386B)
                              ),
                            )
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: const [
                          Text(
                            '1. Seleccionar la opción ficha de pago referenciado \n\n2. Elige pago de servicios \n\n3. Imprimir la hoja referenciada \n\n4. Hacer el depósito en el banco \n\n5. Esperar 24 horas hábiles para volver a ingresar \n\n6. Imprimir el recibo',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0, left: 15),
                            child: Text(
                              'Nota: las cantidades mencionadas pueden variar según disposiciones administrativas.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),

                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 15),
                      child: TablaEgresados(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'INFORMES:',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    //TODO: FIX
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15, bottom: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    '-Mtro. Jhonny Julián Vázquez Ayar',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    '-Cel: 9611349402',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10.0, bottom: 20),
                                  child: Text(
                                    '-Correo: titulacion.cedes@hotmail.com',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //CEDULA IMAGEN
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/logo_siae_desc.png',
                        height: 250,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            _launchURL(
                                "https://siae.unach.mx/");
                          },
                          child: const Text(
                            'Acceder al SIAE',
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
            //CREDENCIAL
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
                              'Convocatoria Credencial EXE-UNACH\nLa Universidad Autónoma de Chiapas, a través de la Dirección de Formación e Investigación Educativa de la Secretaría Académica, convoca a todos los egresados de los diferentes programas educativos que oferta la Universidad a la:\n\nOBTENCIÓN DE LA CREDENCIAL DE EXE-UNACH\n\nObjetivo:\Fomentar y mantener una relación colaborativa de la Universidad con sus egresados para reforzar su pertenencia a la Unach; además de dar acceso al egresado al catálogo de beneficios Unach como parte de nuestra comunidad universitaria.\n\nCuota de recuperación:\nLa emisión de la Credencial EXE Unach tendrá un costo de 40.00 (cuarenta pesos 00/100 M.N) el cual será destinado a la recuperación de los costos directos de la presente convocatoria.\n\nRequisitos para tramitar la credencial:\n- Comprobante de aplicación de Encuesta de Seguimiento de Egresado del Sistema Institucional de Seguimiento de Egresados (SISE). Podrá ingresar con su número de matrícula para su aplicación en la página www.egresados.unach.mx\n- Copia de una identificación oficial vigente (INE, pasaporte o licencia de manejo).\n- Ficha de pago original.\n\n\nProcedimiento de Credencialización:\n1. Contestar la Encuesta de Seguimiento de Egresados del Sistema Institucional de Seguimiento de Egresados (SISE) en la página www.egresados.unach.mx\nPodrás ingresar con tu número de matrícula. En caso de no tenerla, el SISE te ayudará a obtenerla.\nSi tienes 2 años de egresado como máximo, tendrás que contestar la Encuesta de Egresado.\nEn caso de que tengas 3 años de egresado o más, el SISE te solicitará contestar la Encuesta de Seguimiento de Egresados.\n\nUNIVERSIDAD AUTÓNOMA DE CHIAPAS\nSECRETARÍA ACADÉMICA\nDirección de Formación e Investigación Educativa\nSi no has contestado la Encuesta de Egresados, tendrás que aplicar ambos instrumentos.\n2. Imprimir comprobante de haber concluido al 100% la Encuesta de Egresado y/o Seguimiento de Egresado emitido por el SISE.\n3. Generar la ficha de referencia con la cual se realizará el pago, en la página www.sysweb.unach.mx en la sección de ALUMNOS, siguiendo la siguiente ruta:\n\n- Sección ALUMNOS\n ->Eventos especiales\n ->Tuxtla Gutiérrez\n ->12101 -> Dirección de Formación e Investigación Educativa\n ->CREDENCIALIZACIÓN EXE-UNACH\n4. Realizar pago en la institución bancaria de su preferencia.\n5. Enviar al correo egresados@unach.mx los siguientes documentos, para efecto de validación:\n\n- Comprobante de aplicación de la(s) Encuesta(s) emitido por el SISE.\n- Copia de una identificación oficial vigente (INE, pasaporte o licencia de manejo).\n- Comprobante del pago de la cuota de recuperación.\n6. Posteriormente recibirá un correo de validación donde daremos a conocer el número de folio de la solicitud.\n7. Acudir a las oficinas de la Dirección de Formación e Investigación Educativa, para la toma de fotografía y validación de documentos originales entregados previamente vía correo electrónico, considerando los días de atención para cada Unidad Académica indicados en el calendario anexo.\n\nLas oficinas se localizan en Boulevard Belisario Domínguez kilómetro 1081 Sin Número, Col. Terán Tuxtla Gutiérrez, Chiapas C.P. 29050 (Edificio Recursos Humanos, planta baja). En un horario de 10:00 a 14:00 hrs. de lunes a viernes.\n\nLos documentos originales son exclusivamente para validar información y se regresarán al interesado al realizar el trámite.\nPara la toma de fotografía es necesario que acuda sin anteojos y con el rostro descubierto.\n\nPara más información:\n\nPara solicitar mayor información sobre la presente Convocatoria, la Unach pone a tu disposición los siguientes datos de contacto:\nDirección de Formación e Investigación Educativa (DFIE)\nTel. (961) 61 5 35 33 ext. 106 y al celular 961 1141168\nCorreo electrónico egresados@unach.mx\n\nUnidad Académica\nEn tu Escuela, Facultad o Centro contacta al Responsable de Seguimiento de Egresados.\nDías y horarios de atención: lunes a viernes de 10:00 a.m. a 2:00 p.m.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/Crecencialexeunach.jpg',
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

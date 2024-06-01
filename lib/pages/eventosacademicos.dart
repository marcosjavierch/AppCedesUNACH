import 'package:flutter/material.dart';
import 'home_screen.dart';

class EventosAcademicos extends StatelessWidget {
  const EventosAcademicos ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          title: const Text('Eventos Académicos'),
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
                    Tab(text: 'Think Tank Webinar Series'),
                    Tab(text: 'XIV Simposio Internacional Educación y Cultura'),
                    Tab(text: 'Coloquios'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            //TTWS
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15, top: 25.0),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'La Universidad Autónoma de Chiapas, a través del Centro de Estudios para el Desarrollo Municipal y Políticas Públicas, invitan a participar en el:\nThink Tank Webinar Series. 16 Aniversario CEDES.\n«Optimización de sistemas energéticos incluyendo consideraciones ambientales y sociales»\nPonente: Dr. Bruno Domenech , Profesor Agregado. Universidad Politécnica de Catalunya:\nDra. Karen Salomé Caballero Mora, Profesora investigadora. Facultad de Ciencias en Física y Matemáticas, Universidad Autónoma de Chiapas\nLunes 23 de octubre de 2023\n11 a 13 horas CDMX\nModalidad: virtual\nLink del evento en Sala Zoom: https://us06web.zoom.us/j/87814321148?pwd=OPoEJPrJyFGdxa4SZGKsmvoQQ1U2Kx.1\nID de reunión: 878 1432 1148\nCódigo de acceso: 271193\nTransmisión por facebook: https://fb.me/e/1jywcDW3j\n#thinktank #webinargratuito #UNACH #cedespresente #DesarrolloMunicipal #CEDES',
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
                        'https://www.cedes.unach.mx/images/2023/webinars/2023/conferencia_magistral.jpeg',
                        height: 250,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //XIVSIEC
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15, top: 25.0),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Desde UNACH CEDES, se comunica sobre el próximo evento "XIV Simposio Internacional Educación y Cultura", la participación en el evento puede ser mediante la modalidad presencial o virtual. La Universidad de Matanzas y el hotel Bellacosta de Varadero serán las Sedes de esta XIV edición.\n\nEl evento tiene como objetivo: Estimular la presentación, el debate y el intercambio de experiencias, así como la colaboración entre profesionales e interinstitucional en el ámbito de las temáticas que se convocan mediante distintos objetivos y temáticas que van de la mano de actividades del programa.\n\nVer más en el siguiente enlace donde se podrá observar información acerca del programa, inscripciones así como un apartado de preguntas frecuentes: https://xivsimposio.edunetic.com/#programa\n\nLa fecha en la imagen es sobre el programa general.',
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
                        'https://www.cedes.unach.mx/images/XIV_Simposio_Internacional_Educacin_y_Cultura_-_copia_2.jpg',
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15, top: 25.0),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Información adicional para inscripciones:\nhttps://xivsimposio.edunetic.com/#incripcion',
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
                      child: Image.asset(
                        'assets/xivsimposio.png',
                        height: 250,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //COLOQUIOS
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
                              'EVENTOS ACADEMICOS',
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
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.network(
                        'https://www.cedes.unach.mx/images/2023/EVENTOSACA/123_2.jpg',
                        height: 450,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15, top: 25.0),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'El Instituto Internacional de Integración - CAB, Empresa Edunetic en Bolivia, la Universidad de Matanzas en Cuba, la Universidad Autónoma de Chiapas a través de UNACH CEDES, la Universidad Tangamanga de San Luis Potosi y la Universidad Autónoma de San Luis Potosí UASLP en México, la Universidad Andrés Bello en Chile, la Universidad Nacional de Educación UNAE del Ecuador y el DVV International Mx-Gt-Cb:',
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
                              'CONVOCAN',
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
                      padding: EdgeInsets.only(bottom: 20.0, left: 15, top: 25.0),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Al V Coloquio Internacional "Las Ciencias de la Educación en función del desarrollo humano"\nFecha: 16 y 17 de noviembre de 2023\nLugar: Online\nSitio web: https://coloquio.edunetic.com/\nTemas destacados:\n- Atención a la diversidad educativa\n- Políticas públicas en educación\n- Educación post-COVID y mucho más.\nAprende de expertos internacionales y comparte conocimientos con colegas de todo el mundo. ¡Una oportunidad única!\nRegístrate ahora en nuestra página web y asegura tu lugar: https://coloquio.edunetic.com/registro\n¡No dejes pasar esta oportunidad! ¡Te esperamos en el V Coloquio Internacional "Las Ciencias de la Educación en Función del Desarrollo Humano"!\nSi tienes alguna pregunta, contáctanos a: info@edunetic.com\nÚnete a nuestro grupo de WhatsApp para recibir actualizaciones sobre el coloquio: https://chat.whatsapp.com/D7EcxkBi1tpGVuArzBTbSf\n#ColoquioInternacional#Educación #DesarrolloHumano',
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

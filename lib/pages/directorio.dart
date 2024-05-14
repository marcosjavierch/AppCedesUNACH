import 'package:flutter/material.dart';
import 'home_screen.dart';

class Directorio extends StatelessWidget {
  const Directorio ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          title: const Text('Directorio'),
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
                    Tab(text: 'Directorio'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                ///PERSONA 1
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 15),
                        child: Image.network(
                          'https://cedes.unach.mx/images/2023/AMA2023.jpeg',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Dra. Andrea Mena Álvarez'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Coordinadora General'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('andrea.mena@unach.mx'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('+52 (961) 61 7 80 00 ext. 5540'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('5541 9616047354'),
                            ],
                          ),
                        ),
                      ],
                    )

                  ],
                ),
                ///PERSONA 2
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 15),
                        child: Image.network(
                          'https://cedes.unach.mx/images/honorata.png',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Mtra. María Honorata López \nMorales'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Encargada de la Secretaría \nAcadémica'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('honorata.lopez@unach.mx'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('01 (961) 61 7 80 00 ext. 5543, \n5544'),
                            ],
                          ),
                        ),
                      ],
                    )

                  ],
                ),
                ///PERSONA 3
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 15),
                        child: Image.network(
                          'https://cedes.unach.mx/images/liccesar.png',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Lic. César Octavio Cancino Ayala'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Secretario Administrativo'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('cesar.cancino@unach.mx'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('01 (961) 61 7 80 00 ext. 5542'),
                            ],
                          ),
                        ),
                      ],
                    )

                  ],
                ),
                ///PERSONA 4
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 15),
                        child: Image.network(
                          'https://cedes.unach.mx/images/ADT/DFGH.jpg',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Dr. Dorian Francisco Gómez \nHernández'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Coordinador de Investigación \ny Posgrado. \nCoordinador de Proyectos de \nDVV-International'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('dorian.gomez@unach.mx'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('+52 9611118096'),
                            ],
                          ),
                        ),
                      ],
                    )

                  ],
                ),
                ///PERSONA 5
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 15),
                        child: Image.network(
                          'https://cedes.unach.mx/images/licgraciela.png',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Lic. Graciela del Carmen Pulido \nSerrano'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Coordinador de Planeación \ny Evaluación'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('graciela.pulido@unach.mx'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('01 (961) 61 7 80 00 \next. 5544'),
                            ],
                          ),
                        ),
                      ],
                    )

                  ],
                ),
                ///PERSONA 6
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 15),
                        child: Image.network(
                          'https://cedes.unach.mx/images/rocio2.png',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Lic. Rocío Aguilar Sánchez'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Coordinadora de Extensión \ny Vinculación'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('rocio.aguilar@unach.mx'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('01 (961) 61 7 80 00 \next. 5544'),
                            ],
                          ),
                        ),
                      ],
                    )

                  ],
                ),
                ///PERSONA 7
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 15),
                        child: Image.network(
                          'https://cedes.unach.mx/images/rolando.png',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Mtro. Rolando Antonio Espinosa'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Coordinador de la \nLicenciatura en Desarrollo \nMunicipal \ny Gobernabilidad'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('cedes.ldmg@unach.mx'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('961 61 780 00 Ext. 5543'),
                            ],
                          ),
                        ),
                      ],
                    )

                  ],
                ),
                ///PERSONA 8
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 15),
                        child: Image.network(
                          'https://cedes.unach.mx/images/stefanynuevo.jpeg',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Biól. María Stefany Gordillo \nMartínez'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Coordinadora de la Licenciatura\nen Estadística y Sistemas\nde Información'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('cedes.lesi@unach.mx'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('961 61 780 00 Ext. 5543'),
                            ],
                          ),
                        ),
                      ],
                    )

                  ],
                ),
                ///PERSONA 9
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 15),
                        child: Image.network(
                          'https://static.vecteezy.com/system/resources/thumbnails/009/734/564/small/default-avatar-profile-icon-of-social-media-user-vector.jpg',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Ing. Octavio Perez'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Encargado de Control Escolar'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('controlescolar.cedes\n@unach.mx'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('(961) 61 2 10 82'),
                            ],
                          ),
                        ),
                      ],
                    )

                  ],
                ),
                ///PERSONA 10
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 15),
                        child: Image.network(
                          'https://cedes.unach.mx/images/fatima.png',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Mtra. Fátima Guadalupe \nLaguna Vázquez'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Coordinadora de Tutorias y \nEncargada del Centro \nPsicopedagógico'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('patcedes@unach.mx'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('9612606987'),
                            ],
                          ),
                        ),
                      ],
                    )

                  ],
                ),
                ///PERSONA 11
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 15),
                        child: Image.network(
                          'https://static.vecteezy.com/system/resources/thumbnails/009/734/564/small/default-avatar-profile-icon-of-social-media-user-vector.jpg',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Mtra. Brenda Castañon \nVillanueva'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Encargada del Centro \nEvaluador'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('centroevaluador.cedes\n@unach.mx'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('01 (961) 61 7 80 00 \next. 5544'),
                            ],
                          ),
                        ),
                      ],
                    )

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

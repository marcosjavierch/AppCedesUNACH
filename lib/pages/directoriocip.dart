import 'package:flutter/material.dart';
import 'home_screen.dart';

class DirectorioCIP extends StatelessWidget {
  const DirectorioCIP ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          title: const Text('Directorio'),
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
                ///PERSONA 2
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 15),
                        child: Image.network(
                          'https://www.cedes.unach.mx/images/WhatsApp_Image_2023-12-07_at_141613.jpeg',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('María Teresa de Jesús Trujillo Olivera'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Apoyo a la Investigación'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('teresa.trujillo@unach.mx'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('+52(961)6178000\next. 5544'),
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
                          'https://www.cedes.unach.mx/images/2023/Captura_de_pantalla_2023-06-01_a_las_125214.png',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Alder Toledo Pola'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Diseño y tecnologías'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('alder.toledo@unach.mx'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('+52(961)6178000\next. 5544'),
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
                          'https://www.cedes.unach.mx/images/2023/274628779_2037798776379019_453083334345112524_n_1.jpg',
                          height: 180,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Miguel Alberto Minor Gómez'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Text('Apoyo a Proyectos'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.email),
                              SizedBox(width: 8),
                              Text('miguel.minor@unach.mx'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              SizedBox(width: 8),
                              Text('+52(961)6178000\nExt. 5544'),
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

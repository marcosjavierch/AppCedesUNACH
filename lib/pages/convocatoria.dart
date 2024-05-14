import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Convocatoria extends StatefulWidget {
  const Convocatoria({Key? key}) : super(key: key);

  @override
  _ConvocatoriaState createState() => _ConvocatoriaState();
}

class _ConvocatoriaState extends State<Convocatoria> {
  late YoutubePlayerController _youtubeControllerR;
  late YoutubePlayerController _youtubeControllerS;
  late YoutubePlayerController _youtubeControllerE;
  late YoutubePlayerController _youtubeControllerP;
  late YoutubePlayerController _youtubeControllerF;
  late YoutubePlayerController _youtubeControllerH;
  late YoutubePlayerController _youtubeControllerJ;
  late YoutubePlayerController _youtubeControllerC;
  late YoutubePlayerController _youtubeControllerY;
  late YoutubePlayerController _youtubeControllerA;
  bool _isFullScreen = false;

  @override
  void initState() {
    super.initState();
    //VIDEO RECORRIDO
    _youtubeControllerR = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=eRKYUlW98I0")!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: true,
        enableCaption: true,
        controlsVisibleAtStart: true,
      ),
    );

    _youtubeControllerR.addListener(() {
      if (_youtubeControllerR.value.isFullScreen != _isFullScreen) {
        setState(() {
          _isFullScreen = _youtubeControllerR.value.isFullScreen;
        });
      }
    });

    //VIDEOS SPOTS
    _youtubeControllerS = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=dsNxSYSsHKo")!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: true,
        enableCaption: true,
        controlsVisibleAtStart: true,
      ),
    );

    _youtubeControllerS.addListener(() {
      if (_youtubeControllerS.value.isFullScreen != _isFullScreen) {
        setState(() {
          _isFullScreen = _youtubeControllerS.value.isFullScreen;
        });
      }
    });

    _youtubeControllerE = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=9_n2i3T6TGM")!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: true,
        enableCaption: true,
        controlsVisibleAtStart: true,
      ),
    );

    _youtubeControllerE.addListener(() {
      if (_youtubeControllerE.value.isFullScreen != _isFullScreen) {
        setState(() {
          _isFullScreen = _youtubeControllerE.value.isFullScreen;
        });
      }
    });

    //VIDEOS HISTORIAS
    //VID1
    _youtubeControllerP = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=CrF29ScUoaY")!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: true,
        enableCaption: true,
        controlsVisibleAtStart: true,
      ),
    );

    _youtubeControllerP.addListener(() {
      if (_youtubeControllerP.value.isFullScreen != _isFullScreen) {
        setState(() {
          _isFullScreen = _youtubeControllerP.value.isFullScreen;
        });
      }
    });

    //VOD2
    _youtubeControllerF = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=MgHVgQuos4g")!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: true,
        enableCaption: true,
        controlsVisibleAtStart: true,
      ),
    );

    _youtubeControllerF.addListener(() {
      if (_youtubeControllerF.value.isFullScreen != _isFullScreen) {
        setState(() {
          _isFullScreen = _youtubeControllerF.value.isFullScreen;
        });
      }
    });

    //VOD3
    _youtubeControllerH = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=J1MZo6TTHcg")!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: true,
        enableCaption: true,
        controlsVisibleAtStart: true,
      ),
    );

    _youtubeControllerH.addListener(() {
      if (_youtubeControllerH.value.isFullScreen != _isFullScreen) {
        setState(() {
          _isFullScreen = _youtubeControllerH.value.isFullScreen;
        });
      }
    });

    //VOD4
    _youtubeControllerJ = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=iCz0unzorj4")!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: true,
        enableCaption: true,
        controlsVisibleAtStart: true,
      ),
    );

    _youtubeControllerJ.addListener(() {
      if (_youtubeControllerJ.value.isFullScreen != _isFullScreen) {
        setState(() {
          _isFullScreen = _youtubeControllerJ.value.isFullScreen;
        });
      }
    });
    
    //VOD5
    _youtubeControllerC = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=OKr4G3rJVvs")!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: true,
        enableCaption: true,
        controlsVisibleAtStart: true,
      ),
    );

    _youtubeControllerC.addListener(() {
      if (_youtubeControllerC.value.isFullScreen != _isFullScreen) {
        setState(() {
          _isFullScreen = _youtubeControllerC.value.isFullScreen;
        });
      }
    });

    //VOD6
    _youtubeControllerY = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=BmepAIUbgtM")!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: true,
        enableCaption: true,
        controlsVisibleAtStart: true,
      ),
    );

    _youtubeControllerY.addListener(() {
      if (_youtubeControllerY.value.isFullScreen != _isFullScreen) {
        setState(() {
          _isFullScreen = _youtubeControllerY.value.isFullScreen;
        });
      }
    });

    //VODFINAL
    _youtubeControllerA = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=CCDPVFcL-Ww")!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: true,
        enableCaption: true,
        controlsVisibleAtStart: true,
      ),
    );

    _youtubeControllerA.addListener(() {
      if (_youtubeControllerA.value.isFullScreen != _isFullScreen) {
        setState(() {
          _isFullScreen = _youtubeControllerA.value.isFullScreen;
        });
      }
    });
  }

  @override
  void dispose() {
    _youtubeControllerR.dispose();
    _youtubeControllerS.dispose();
    _youtubeControllerE.dispose();
    _youtubeControllerP.dispose();
    _youtubeControllerF.dispose();
    _youtubeControllerH.dispose();
    _youtubeControllerJ.dispose();
    _youtubeControllerC.dispose();
    _youtubeControllerY.dispose();
    _youtubeControllerA.dispose();
    super.dispose();
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse("https://$url");

    if (!await canLaunch(uri.toString())) {
      throw "Can not launch url";
    } else {
      await launch(uri.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 13,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          title: const Text('Convocatoria Enero - Junio 2024'),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
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
                    Tab(text: 'Convocatoria 2024'),
                    Tab(text: 'Descarga tu ficha y Guía de estudios'),
                    Tab(text: 'Costo de la ficha'),
                    Tab(text: 'Examen de admisión en línea'),
                    Tab(text: 'Sedes Académicas a Distancia'),
                    Tab(text: 'Publicación de resultados'),
                    Tab(text: 'Inscripciones'),
                    Tab(text: 'Módulo de inducción'),
                    Tab(text: 'Inicio de clases'),
                    Tab(text: 'Conoce nuestra oferta educativa'),
                    Tab(text: 'Recorrido virtual CEDES'),
                    Tab(text: 'SPOTS de nuestras licenciaturas'),
                    Tab(text: 'Historias de nuestros estudiantes'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            //2024
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          'Registro de aspirantes: del 20 de febrero al 12 de abril 2024',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Center(
                        child: Image.network(
                          'https://www.cedes.unach.mx/images/myimg.jpg',
                          height: 610,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //FICHA
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          'Para mayor información: https://aspirantes.unach.mx/distancia#licenciatura',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Center(
                        child: Image.network(
                          'https://www.cedes.unach.mx/images/myimg2.jpg',
                          height: 950,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //COSTO FICHA
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          '\$950.00 Pesos Mexicanos ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //EXAMEN ADMISION
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          '07 de mayo de 2024\n\nEn caso de no contar con equipo de cómputo e internet, puedes acudir a cualquiera de las sedes académicas a distancia y dirigirte a la página:\n\nwww.aspirantes.unach.mx en el apartado EXAMEN.\n\nLa fecha y la hora del examen se asigna al término del registro de tu ficha.',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //SEDES ADADEMICAS
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
                              'La Universidad Autónoma de Chiapas cuenta con 84 Sedes Académicas a Distancia con espacios físicos ubicados en 59 municipios del Estado, con equipos de cómputo e internet, donde pueden utilizarlos sin costo para los estudiantes, además de recibir asesoría técnica y académica.\n\nConsulta las sedes Académicas: Aqui',
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
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Center(
                        child: Image.network(
                          'https://www.cedes.unach.mx/images/Sedes_academicas.jpg',
                          height: 370,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //PUBLICACION
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          'La publicación se llevará a cabo el día 22 de mayo del 2024 en\nwww.aspirantes.unach.mx, www.siae.unach.mx y www.cedes.unach.mx',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //INSCRIPCIONES
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          '¡¡Si acreditaste el examen de admisión en la convocatoria Agosto-Diciembre 2024!!',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Período ordinario de pago de inscripción en instituciones bancarias para estudiantes de nuevo ingreso: 5 de julio al 07 de agosto.\n\nPeríodo de pago con cuota extemporánea en instituciones bancarias para estudiantes de nuevo ingreso: 08 de agosto al 16 de agosto.\n\nVisita www.siae.unach.mx para más información',
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
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Center(
                        child: Image.network(
                          'https://www.cedes.unach.mx/images/SIAESistemaInstitucionaldeAdministracinEscolar.png',
                          height: 600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //MODULO INDUCCION
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          '27 de mayo al 21 de junio 2024\n\nwww.educa-t.unach.mx',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Center(
                        child: Image.network(
                          'https://www.cedes.unach.mx/images/educatunachmxIngresar_alsitio.png',
                          height: 250,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //INICIO DE CLASES
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          '05 de agosto 2024',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Center(
                        child: Image.network(
                          'https://www.cedes.unach.mx/images/computer-1120754_1280.jpg',
                          height: 250,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //OFERTA EDUCATIVA
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 25.0),
                      child: Center(
                        child: Text(
                          'Licenciatura en Estadística y Sistemas de Información',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Informes:\nCoordinadora de la licenciatura: Mtra. María Stefany Gordillo Martínez\nCorreos: cedes.lesi@unach.mx - stefany.gordillo@unach.mx\nTeléfono: 961 120 55',
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
                      padding: const EdgeInsets.only(top: 15, bottom: 20.0),
                      child: Center(
                        child: Image.network(
                          'https://pbs.twimg.com/media/GHnMUyoXEAAqa8-?format=jpg&name=large',
                          height: 550,
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(top: 25.0),
                      child: Center(
                        child: Text(
                          'Licenciatura en Desarrollo Municipal y Gobernabilidad',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 20),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'Informes:\nCoordinador de la licenciatura: Mtro. Rolando Antonio Espinosa\nCorreos: cedes.ldmyg@unach.mx - rolando.antonio@unach.mx\nTeléfono: 961 137 43',
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
                      padding: const EdgeInsets.only(top: 15, bottom: 20.0),
                      child: Center(
                        child: Image.network(
                          'https://pbs.twimg.com/media/GHmP18fXAAAA31K?format=jpg&name=large',
                          height: 550,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //RECORRIDO
            ListView(
              children: [
                Column(
                  children: [
                  if (_isFullScreen)
                    Expanded(child: YoutubePlayer(controller: _youtubeControllerR))
                  else
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: YoutubePlayer(controller: _youtubeControllerR),
                    ),
                  if (!_isFullScreen)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5), 
                        ],
                      ),
                    ),
                  ],    
                ),
              ],
            ),

            //SPOTS
            ListView(
              children: [
                Column(
                  children: [
                  if (_isFullScreen)
                    Expanded(child: YoutubePlayer(controller: _youtubeControllerS))
                  else
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: YoutubePlayer(controller: _youtubeControllerS),
                    ),
                  if (!_isFullScreen)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5), 
                        ],
                      ),
                    ),
                  ],    
                ),

                Column(
                  children: [
                  if (_isFullScreen)
                    Expanded(child: YoutubePlayer(controller: _youtubeControllerE))
                  else
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: YoutubePlayer(controller: _youtubeControllerE),
                    ),
                  if (!_isFullScreen)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5), 
                        ],
                      ),
                    ),
                  ],    
                ),
              ],
            ),

            //HISTORIAS
            ListView(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          'Romelia Pérez Vázquez\nLicenciatura en Estadística y Sistemas de Información',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                  if (_isFullScreen)
                    Expanded(child: YoutubePlayer(controller: _youtubeControllerP))
                  else
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: YoutubePlayer(controller: _youtubeControllerP),
                    ),
                  if (!_isFullScreen)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5), 
                        ],
                      ),
                    ),
                  ],    
                ),


                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          'Francisco Javier Trejo\nLicenciatura en Estadística y Sistemas de Información',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                  if (_isFullScreen)
                    Expanded(child: YoutubePlayer(controller: _youtubeControllerF))
                  else
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: YoutubePlayer(controller: _youtubeControllerF),
                    ),
                  if (!_isFullScreen)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5), 
                        ],
                      ),
                    ),
                  ],    
                ),

                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          'Hansell Fuentes Soto\nLicenciatura en Desarrollo Municipal y Gobernabilidad',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                  if (_isFullScreen)
                    Expanded(child: YoutubePlayer(controller: _youtubeControllerH))
                  else
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: YoutubePlayer(controller: _youtubeControllerH),
                    ),
                  if (!_isFullScreen)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5), 
                        ],
                      ),
                    ),
                  ],    
                ),

                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          'José Luis Mejía Serrano\nLicenciatura en Estadística y Sistemas de Información',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                  if (_isFullScreen)
                    Expanded(child: YoutubePlayer(controller: _youtubeControllerJ))
                  else
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: YoutubePlayer(controller: _youtubeControllerJ),
                    ),
                  if (!_isFullScreen)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5), 
                        ],
                      ),
                    ),
                  ],    
                ),

                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          'Claudia Elias Mata\nLicenciatura en Estadística y Sistemas de Información',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                  if (_isFullScreen)
                    Expanded(child: YoutubePlayer(controller: _youtubeControllerC))
                  else
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: YoutubePlayer(controller: _youtubeControllerC),
                    ),
                  if (!_isFullScreen)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5), 
                        ],
                      ),
                    ),
                  ],    
                ),

                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          'Yesenia Candelaria Díaz Gordillo\nLicenciatura en Desarrollo Municipal y Gobernabilidad',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                  if (_isFullScreen)
                    Expanded(child: YoutubePlayer(controller: _youtubeControllerY))
                  else
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: YoutubePlayer(controller: _youtubeControllerY),
                    ),
                  if (!_isFullScreen)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5), 
                        ],
                      ),
                    ),
                  ],    
                ),

                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          'Javier Abundio Valdiviezo Ordóñez\nLicenciatura en Desarrollo Municipal y Gobernabilidad',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                  if (_isFullScreen)
                    Expanded(child: YoutubePlayer(controller: _youtubeControllerA))
                  else
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: YoutubePlayer(controller: _youtubeControllerA),
                    ),
                  if (!_isFullScreen)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5), 
                        ],
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

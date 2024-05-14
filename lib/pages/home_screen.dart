import 'dart:async';
import 'package:flutter/material.dart';
import 'package:unachcedes/pages/avisoprovacidad.dart';
import 'package:unachcedes/pages/becas.dart';
import 'package:unachcedes/pages/centro_evaluador.dart';
import 'package:unachcedes/pages/convocatoria.dart';
import 'package:unachcedes/pages/gdm.dart';
import 'package:unachcedes/pages/planeacion.dart';
import 'package:unachcedes/pages/redes_sociales.dart';
import 'package:unachcedes/pages/segurofacultativo.dart';
import 'package:unachcedes/pages/serviciosocial.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'package:unachcedes/widgets/seccion_noticias.dart';
import 'package:unachcedes/pages/acerca_de.dart';
import 'package:unachcedes/pages/bolsa_de_trabajo.dart';
import 'package:unachcedes/pages/control_escolar.dart';
import 'package:unachcedes/pages/docentes.dart';
import 'package:unachcedes/pages/egresados.dart';
import 'package:unachcedes/pages/estudiantes.dart';
import 'package:unachcedes/pages/oferta_educativa.dart';
import 'package:unachcedes/pages/pat.dart';
import 'package:unachcedes/widgets/carousel.dart';
import 'package:unachcedes/widgets/seccion_informacion_relevante.dart';
import 'package:unachcedes/widgets/seccion_noticias.dart';
import 'package:unachcedes/pages/investigacion.dart';
import 'package:unachcedes/pages/posgrado.dart';
import 'package:unachcedes/pages/dvvinternational.dart';
import 'package:unachcedes/pages/adt.dart';
import 'package:unachcedes/pages/thinktank.dart';
import 'package:unachcedes/pages/directorio.dart';
import 'package:unachcedes/pages/directoriocip.dart';
import 'package:unachcedes/pages/eventosacademicos.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late YoutubePlayerController _youtubeController;
  bool _isFullScreen = false;

  @override
  void initState() {
    super.initState();
    _youtubeController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://youtu.be/HsH7jRPFGeQ?si=wldKyGccc7jz0Ovp")!,
      flags: YoutubePlayerFlags(
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

    _youtubeController.addListener(() {
      if (_youtubeController.value.isFullScreen != _isFullScreen) {
        setState(() {
          _isFullScreen = _youtubeController.value.isFullScreen;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 43, 102),
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          margin: EdgeInsets.only(top: 30.0), // Ajusta el margen superior para mover la imagen hacia abajo
          child: Image(
            image: AssetImage('assets/template.png'),
            fit: BoxFit.contain,
            height: 40,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      drawer: const MyNavigationDrawer(),
       
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/cedesicono.jpg',
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
if (_isFullScreen)
              Expanded(child: YoutubePlayer(controller: _youtubeController))
            else
              AspectRatio(
                aspectRatio: 16 / 9,
                child: YoutubePlayer(controller: _youtubeController),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'NOTICIAS',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white, 
                    ),
                  ),
                ),
                CarouselNoticias(),
                SizedBox(height: 1), // Ajuste de espacio
              ],
            ),
        
            
            
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _youtubeController.dispose();
  }
}



class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({Key? key}) : super(key: key);

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
  Widget build(BuildContext context) => Drawer(
          child: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      ));

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      );

  Widget buildMenuItems(BuildContext context) => Wrap(
        runSpacing: 5,
        children: [
          ListTile(
              leading: Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>  HomeScreen(),
                  )),
              textColor: Colors.black),
          ListTile(
              leading: Icon(Icons.info),
              title: const Text('Acerca de'),
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AcercaDe(),
                  )),
              textColor: Colors.black),
          ListTile(
            leading: Icon(Icons.cast_for_education),
              title: const Text('Oferta educativa'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const OfertaEducativa(),
                ));
              },
              textColor: Colors.black),
              //SEC ACADEMICA
          ExpansionTile(
            leading: Icon(Icons.school),
            title: const Text('Secretaría Academica'),
            textColor: Colors.black,
            collapsedIconColor: Colors.black,
            collapsedTextColor: Colors.black,
            backgroundColor: const Color(0xFFECEFF1),
            children: [
              ListTile(
                title: const Text('Estudiantes'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Estudiantes(),
                  ));
                },
                textColor: Colors.black,
              ),
              ListTile(
                title: const Text('Docentes'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Docentes(),
                  ));
                },
                textColor: Colors.black,
              ),
              ListTile(
                title: const Text('Egresados'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Egresados(),
                  ));
                },
                textColor: Colors.black,
              ),
              ListTile(
                title: const Text('Bolsa de trabajo'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BolsaDeTrabajo(),
                  ));
                },
                textColor: Colors.black,
              ),
              ListTile(
                title: const Text('Control Escolar'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ControlEscolar(),
                  ));
                },
                textColor: Colors.black,
              ),
              ListTile(
                title: const Text('PAT'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PAT(),
                  ));
                },
                textColor: Colors.black,
              ),
            ],
          ),
          //INVEST CIP
          ExpansionTile(
            leading: Icon(Icons.dvr),
            title: const Text('Investigación y Posgrado'),
            textColor: Colors.black,
            collapsedIconColor: Colors.black,
            collapsedTextColor: Colors.black,
            backgroundColor: const Color(0xFFECEFF1),
            children: [
              ListTile(
                title: const Text('Investigación'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Investigacion(),
                  ));
                },
                textColor: Colors.black,
              ),
              ListTile(
                title: const Text('Posgrado'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Posgrado(),
                  ));
                },
                textColor: Colors.black,
              ),
              ListTile(
                title: const Text('DVV-International'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DVVInt(),
                  ));
                },
                textColor: Colors.black,
              ),
              ListTile(
                title: const Text('Think Tank Webinar Series'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ThinkTank(),
                  ));
                },
                textColor: Colors.black,
              ),
              ListTile(
                title: const Text('ADT'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ADT(),
                  ));
                },
                textColor: Colors.black,
              ),
              ListTile(
                title: const Text('Eventos Académicos'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EventosAcademicos(),
                  ));
                },
                textColor: Colors.black,
              ),
              ListTile(
                title: const Text('Directorio'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DirectorioCIP(),
                  ));
                },
                textColor: Colors.black,
              ),
            ],
          ),
          //EXTENSION VINC
          ExpansionTile(
            leading: Icon(Icons.account_tree_outlined),
            title: const Text('Extensión y Vinculación'),
            textColor: Colors.black,
            collapsedIconColor: Colors.black,
            collapsedTextColor: Colors.black,
            backgroundColor: const Color(0xFFECEFF1),
            children: [
              ListTile(
                title: const Text('Becas'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Becas(),
                  ));
                },
                textColor: Colors.black,
              ),
              ListTile(
                title: const Text('Servicio Social'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ServicioSocial(),
                  ));
                },
                textColor: Colors.black,
              ),
              ListTile(
                title: const Text('Seguro Facultativo'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SeguroFacultativo(),
                  ));
                },
                textColor: Colors.black,
              ),
            ],
          ),
          //PLANEACION Y EVAL
          ListTile(
              leading: Icon(Icons.assignment_add),
              title: const Text('Planeación y Evaluación'),
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>  Planeacion(),
                  )),
              textColor: Colors.black),
          //GMD
          ListTile(
              leading: Icon(Icons.book_outlined),
              title: const Text('GDM'),
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>  GDM(),
                  )),
              textColor: Colors.black),
          //NETWORKS
          ListTile(
              leading: Icon(Icons.connect_without_contact),
              title: const Text('Redes Sociales'),
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>  RedesSociales(),
                  )),
              textColor: Colors.black),
          //DIRECTORIO
          ListTile(
              leading: Icon(Icons.contact_mail_outlined),
              title: const Text('Directorio'),
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>  Directorio(),
                  )),
              textColor: Colors.black),
          //DIRECTORIO
          ListTile(
              leading: Icon(Icons.content_paste_search),
              title: const Text('Centro Evaluador'),
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>  CentroEvaluador(),
                  )),
              textColor: Colors.black),
          //DIRECTORIO
          ListTile(
              leading: Icon(Icons.https_outlined),
              title: const Text('Aviso de privacidad'),
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>  AvisosDePrivacidad(),
                  )),
              textColor: Colors.black),
          //CONVOCATORIA
          ListTile(
              leading: Icon(Icons.groups_2_outlined),
              title: const Text('Convocatorias'),
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>  Convocatoria(),
                  )),
              textColor: Colors.black),
        ],
      );
}
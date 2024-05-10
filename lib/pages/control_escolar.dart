import 'package:flutter/material.dart';
import 'home_screen.dart';

class ControlEscolar extends StatelessWidget {
  const ControlEscolar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Control Escolar'),
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
                  Tab(text: 'Control Escolar'),
                  Tab(text: 'SIAE'),
                  Tab(text: 'SYSWEB UNACH'),
                ],
              ),
            ),
          ),
        ),
        ),
        body: TabBarView(
          children: [
            //CONTROL ESCOLAR
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'El área de control escolar tiene la función de garantizar el registro y control de la información, referente a los procesos de ingreso, permanencia, egreso y certificación de estudios de pregrado de los estudiantes de la Unidad Académica, el cual se rige mediante el Estatuto Integral del Estudiante.\n\n(ESTATUTO INTEGRAL DE LA UNACH)\nTITULO CUARTO DE LOS NIVELES DE EDUCACIÓN SUPERIOR CAPITULO PRIMERO DEL PREGRADO PAG. 39-47',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
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
            //SIAE
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'A través del Sistema Institucional de Administración Escolar (SIAE), al ingresar con tu correo /contraseña; puedes revisar y tramitar lo siguiente:\n\n1.- Fechas de reinscripción y bajas\n2.- Historial académico completo o ligero\n3.- Ingreso de documentos de estudiantes de nuevo ingreso; así como la fotografía de la Tarjeta TUI y su entrega correspondiente\n4.- Beneficios de la Tarjeta TUI. https://extension.unach.mx/app/index.php\n5.- Descargar pagos de referencia para su reinscripción\n6.- Reinscripción en línea\n7.-Trámite de baja temporal parcial, completa o definitiva acorde los periodos correspondientes\n\nEnlace: https://siae.unach.mx/principal/',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
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
            //SYSWEB-UNACH
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0, left: 15),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: const [
                            Text(
                              'A través de esta plataforma múltiple de gestión administrativa, la UNACH te ofrece los siguientes pagos de servicios:\n\n1.- Carta Pasante\n2.- Certificado de Estudios\n3.- Constancias de estudios (con o sin materias)\n4.- Constancia de Servicio Social, entre otras.\n5.- Constancias Diversas\n\n\nCOMO REALIZAR EL PAGO DE SERVICIOS\n\na) Ingresar al link: https://sysweb.unach.mx/DSIA/#Alumnos\nb) En el apartado alumnos dar click en Pagos de Servicios (Ficha Referenciada)\nc) Ingresar su número de ficha o matrícula\nd) Verificar que sus datos sean correctos\ne) Seleccionar el servicio a pagar\nf) Agregar y proceder a generar la ficha de pago\ng) Seleccionar método de pago.\n\n\nNota: Su pago se verá reflejado en el Sistema UNACH (si paga en ventanilla, su pago se verá reflejado las próximas 24 horas, si paga con tarjeta de débito su pago se verá reflejado de manera inmediata). Una vez reflejado el pago se procede al trámite solicitado.\n\nPara más información: controlescolar.cedes@unach.mx\n\nContacto:\n\nIng. Octavio Pérez González\nEncargado de Control escolar del CEDES\nCel: 9614821750\nCorreo: octavio.perez@unach.mx\n',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
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

import 'package:flutter/material.dart';

class TablaDVVDiplomados extends StatelessWidget {
  const TablaDVVDiplomados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<String>> data = [
      ['No.', 'Ponente', 'Educandos/Docentes', 'Nombre de ponencia'],
      ['1', 'Luis Alfredo Arias Hernández', 'Estudiante', 'Fortalecimiento de las capacidades de los gobiernos locales en el marco de las relaciones transfronterizas México-Guatemala'],
      ['2', 'Edgar Rolando del Cid Fuentes', 'Estudiante', '¿Pueden ser las Asociaciones de Migrantes y las remesas colectivas, factores clave para el desarrollo local de los municipios transfronterizos?'],
      ['3', 'José Francisco López Arenales', 'Estudiante', '¿Pueden ser las Asociaciones de Migrantes y las remesas colectivas, factores clave para el desarrollo local de los municipios transfronterizos?'],
      ['4', 'Esperanza Rivera Rodríguez', 'Estudiante', 'La Mipyme sector comercio en México: obstáculos y potencialidades'],
      ['5', 'Fátima Guadalupe Laguna Vázquez', 'Estudiante', 'La Migración como Objetivo de Desarrollo Sostenible'],
      ['6', 'Neysi Flores Ramírez', 'Estudiante', 'La Migración como Objetivo de Desarrollo Sostenible'],
      ['7', 'Víctor Manuel Ortiz Cundapi', 'Estudiante', 'La Migración como Objetivo de Desarrollo Sostenible'],
      ['8', 'Reyna del Carmen Alfaro Pérez', 'Estudiante', 'Atención de las Personas Privadas de la Libertad (PPL) en su derecho a la educación superior mediada por tecnologías'],
      ['9', 'Edgar Díaz Cruz', 'Estudiante', 'Las representaciones sociales sobre la migración en docentes universitarios de Guatemala y México'],
      ['10', 'Erikc Erwin Galán Monzón', 'Estudiante', 'Desarrollo Económicos Locales Integrales Autosostenibles una ventana para frenar la migración'],
      ['11', 'Ricardo Ley Castellanos', 'Estudiante', 'La educación de jornaleros agrícolas migrantes: una mirada desde el Instituto Nacional para la Educación de los Adultos (INEA)'],
      ['12', 'Javier David Cruz Ruiz', 'Estudiante', 'La educación de jornaleros agrícolas migrantes: una mirada desde el Instituto Nacional para la Educación de los Adultos (INEA)'],
      ['13', 'Perla Yamandanty Ruiz Luis', 'Estudiante', 'La educación de jornaleros agrícolas migrantes: una mirada desde el Instituto Nacional para la Educación de los Adultos (INEA)'],
      ['14', 'Alejandro Venegas Becerra', 'Estudiante', 'Fortalecimiento de la formación de educadoras y educadores de personas jóvenes y adultas en el estado de Chiapas'],
      ['15', 'Perla Yamandanty Ruiz Luis', 'Docente', 'Fortalecimiento de la formación de educadoras y educadores de personas jóvenes y adultas en el estado de Chiapas'],
      ['16', 'Andrea Mena Álvarez', 'Organizadora', 'Propuesta de Plan de Mejora Continua para un Centro Universitario'],
      ['17', 'María Honorata López Morales', 'Organizadora', 'Propuesta de Plan de Mejora Continua para un Centro Universitario'],
      ['18', 'Dorian Francisco Gómez Hernández', 'Docente', 'Propuesta de Plan de Mejora Continua para un Centro Universitario'],
      ['19', 'Julio Guillen Velázquez', 'Docente', 'Hacia la construcción de la agenda de participación ciudadana transfronteriza'],
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(0.5),
          1: FlexColumnWidth(1.5),
          2: FlexColumnWidth(1.3),
          3: FlexColumnWidth(2.0),
        },
        border: TableBorder.all(),
        children: data.map((row) {
          return TableRow(
            children: row.asMap().entries.map((cellEntry) {
              int cellIndex = cellEntry.key;
              String cellData = cellEntry.value;
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  cellData,
                  style: const TextStyle(
                    fontSize: 11.0,
                    color: Colors.black,
                  ),
                ),
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}

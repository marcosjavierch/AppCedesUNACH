import 'package:flutter/material.dart';

class TablaDocentesCIPSEI extends StatelessWidget {
  const TablaDocentesCIPSEI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<String>> data = [
      ['No.', 'Nombre', 'Categpria'],
      ['1', 'Dorian Francisco Gómez Hernández', 'VI. Investigador, científico o Tecnólogo Honorífico'],
      ['2', 'Emma del Carmen Aguilar Pinto', 'VI. Investigador, científico o Tecnólogo Honorífico'],
      ['3', 'Gonzalo Coporo Quintana', 'VI. Investigador Científico o Tecnólogo Honorífico'],
      ['4', 'José Luis González Niño', 'II. Investigador Científico  o Tecnólogo Nivel I con grado de Maestría'],
      ['5', 'Julio Guillén Velázquez', 'VI. Investigador, científico o Tecnólogo Honorífico'],
      ['6', 'Marco Antonio Lara Martínez', 'V. Investigador (a) Científico (a) o Tecnólogo (a) Nivel II'],
      ['7', 'Moisés Silva Cervantes', 'VI. Investigador Científico o Tecnólogo Honorífico'],
      ['8', 'Octavio Grajales Castillejos', 'VI. Investigador, científico o Tecnólogo Honorífico'],
      ['9', 'Oscar Ausencio Carballo Aguilar', 'VI. Investigador, científico o Tecnólogo Honorífico'],
      ['10', 'Rodolfo Humberto Ramírez León', 'VI. Investigador, científico o Tecnólogo Honorífico'],
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(0.3),
          1: FlexColumnWidth(2.0),
          2: FlexColumnWidth(1.3),
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

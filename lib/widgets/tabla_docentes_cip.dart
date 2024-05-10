import 'package:flutter/material.dart';

class TablaDocentesCIP extends StatelessWidget {
  const TablaDocentesCIP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<String>> data = [
      ['Núm.', 'Nombre', 'Nivel'],
      ['1', 'Dorian Francisco Gómez Hernández', 'Candidato'],
      ['2', 'Emma del Carmen Aguilar Pinto', 'Nivel 1'],
      ['3', 'Gonzalo Coporo Quintana', 'Nivel 1'],
      ['4', 'Julio Guillén Velázquez', 'Candidato'],
      ['5', 'Moisés Silva Cervantes', 'Nivel 1'],
      ['6', 'Octavio Grajales Castillejos', 'Nivel 1'],
      ['7', 'Oscar Ausencio Carballo Aguilar', 'Candidato'],
      ['8', 'Rodolfo Humberto Ramírez León', 'Candidato'],
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(0.5),
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

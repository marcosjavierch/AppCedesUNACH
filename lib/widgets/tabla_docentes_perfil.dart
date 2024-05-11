import 'package:flutter/material.dart';

class TablaDocentesPerfil extends StatelessWidget {
  const TablaDocentesPerfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<String>> data = [
      ['No.', 'Nombre del docente', 'Vigencia'],
      ['1', 'Irene Barboza Carrasco', 'Jul 15, 2022 - jul 14, 2025'],
      ['2', 'José Luis González Niño', '2023 - 2026'],
      ['3', 'Oscar Ausencio Carballo Aguilar', 'Dic 15, 2021 - dic 14, 2024'],
      ['4', 'Octavio Grajales Castillejos', 'Jul 15, 2022 - jul 14, 2025'],
      ['5', 'Julio Guillen Velázquez', 'Jul 15, 2022 - jul 14, 2025'],
      ['6', 'Marco Antonio Lara Martínez', 'Oct 12, 2020 - oct 11, 2023'],
      ['7', 'Rodolfo Humberto Ramírez León', 'Jul 15, 2022 - jul 14, 2025'],
      ['8', 'Moisés Silva Cervantes', 'Jul 15, 2022 - jul 14, 2025'],
      ['9', 'Sonia Ifigenia Villalobos López', '2023 - 2026'],
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

import 'package:flutter/material.dart';

class TablaDocentes extends StatelessWidget {
  const TablaDocentes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<String>> data = [
      ['No.', 'Nombre'],
      ['1', 'DRA. REYNA DEL CARMEN ALFARO PÉREZ\nPTC'],
      ['2', 'DRA. IRENE BARBOZA CARRASCO\nPTC'],
      ['3', 'DR. OSCAR AUSENCIO CARBALLO AGUILAR\nPTC'],
      ['4', 'MTRO. JOSÉ LUIS GONZÁLEZ NIÑO\nPTC'],
      ['5', 'DR. OCTAVIO GRAJALES CASTILLEJOS\nPTC'],
      ['6', 'DR. JULIO GUILLÉN VELÁZQUEZ\nPTC'],
      ['7', 'DR. MARCO ANTONIO LARA MARTÍNEZ\nPTC'],
      ['8', 'MTRO. LEONIDES LÓPEZ OCAÑA\nPTC'],
      ['9', 'DR. RODOLFO HUMBERTO RAMÍREZ LEÓN\nPTC'],
      ['10', 'DR. MOISÉS SILVA CERVANTES\nPTC'],
      ['11', 'MTRA. SONIA IFIGENIA VILLALOBOS LÓPEZ\nPTC'],
      ['12', 'MTRO. EDGAR DE JESÚS ZAMUDIO VELASCO\nPTC'],
      ['13', 'MTRO. JOSÉ ALBERTO GORDILLO FLECHA\nPTC'],
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(0.4),
          1: FlexColumnWidth(2.0),
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

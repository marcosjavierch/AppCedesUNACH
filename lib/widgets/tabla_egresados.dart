import 'package:flutter/material.dart';

class TablaEgresados extends StatelessWidget {
  const TablaEgresados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<String>> data = [
      ['Concepto', 'Precio'],
      ['L0416 (autorización examen profesional)', '\$115.00'],
      ['L0304 (examen profesional)', '\$1,430.00'],
      ['L0417 (donación a biblioteca pasante examen profesional)', '\$285.00'],
      ['L0405 (liberación de tesis y servicio social)', '\$85.00'],
      ['L0506 (inscripción tema de tesis)', '\$85.00'],
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(2.0),
          1: FlexColumnWidth(1.0),
        },
        border: TableBorder.all(),
        children: data.map((row) {
          return TableRow(
            children: row.asMap().entries.map((cellEntry) {
              String cellData = cellEntry.value;
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  cellData,
                  style: const TextStyle(
                    fontSize: 12.0,
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

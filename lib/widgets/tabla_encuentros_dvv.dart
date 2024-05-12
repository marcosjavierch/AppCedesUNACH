import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TablaEncuentrosDVV extends StatelessWidget {
  const TablaEncuentrosDVV({Key? key}) : super(key: key);


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
  Widget build(BuildContext context) {
    List<List<String>> data = List.generate(6, (index) {
      if (index == 0) {
        return ['No.', 'Nombre'];
      } else if (index == 1) {
        return ['1',
          'Mapa Antigua Guatemala'];
      } else if (index == 2) {
        return ['2',
          'Mapa Antigua Guatemala'];
      }else if (index == 3) {
        return ['3',
          'Encuentro Binacional Información General'];
      }
      else if (index == 4) {
        return ['4',
          'Carta Bienvenida Encuentro Binacional'];
      }
      else if(index == 5) {
        return ['5',
          'Agenda Encuentro Nacional'];
      }
      return ['${index}'];
    });

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Table(
        border: TableBorder.all(),
        columnWidths: const {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(1),
        },
        children: data.asMap().entries.map((entry) {
          int rowIndex = entry.key;
          List<String> rowData = entry.value;
          return TableRow(
            children: rowData.asMap().entries.map((cellEntry) {
              int cellIndex = cellEntry.key;
              String cellData = cellEntry.value;
              if (rowIndex != 0 && cellIndex == 1) {
                return GestureDetector(
                  onTap: () {
                    if (rowIndex == 1) {
                      _launchURL("https://drive.google.com/file/d/1HH5Y55U30-Y5HG5i0zLYDz9yHMWRnq-K/view?usp=sharing");
                    } else if (rowIndex == 2 && cellIndex == 1) {
                      _launchURL("https://drive.google.com/file/d/1IgtGQoof2IcLao8x-1rPgx9GfNyChklM/view?usp=sharing");
                    }
                    else if (rowIndex == 3 && cellIndex == 1) {
                      _launchURL("https://drive.google.com/file/d/1s9wLRxQPnbLrMMl2C-GpT98gHGy0oBcP/view?usp=sharing");
                    }
                    else if (rowIndex == 4 && cellIndex == 1) {
                      _launchURL("https://drive.google.com/file/d/1WeoxGZFJ5yQj2e7rAOI5snHBSsCiPebN/view?usp=sharing");
                    }
                    else if (rowIndex == 5 && cellIndex == 1) {
                      _launchURL("https://drive.google.com/file/d/1dDt3ragaQPRZ92PA_RC00KhX9IUwm7XO/view?usp=sharing");
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      cellData,
                      style: const TextStyle(fontSize: 11.0, color: Color(0xFF18386B)),
                    ),
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cellData,
                    style: const TextStyle(fontSize: 11.0),
                  ),
                );
              }
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}
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
    List<List<String>> data = List.generate(17, (index) {
      if (index == 0) {
        return [
          'https://www.cedes.unach.mx/images/logo.jpg',
          'https://www.unglobalcompact.org/',];
      } else if (index == 1) {
        return [
          'https://www.cedes.unach.mx/images/Screenshot_2020-06-16-Instituto-Nacional-para-el-Federalismo-y-el-Desarrollo-Municipal-Gobierno-gob-mx.png',
          'https://www.gob.mx/inafed'];
      } else if (index == 2) {
        return [
          'https://www.cedes.unach.mx/images/ceieg-abril-2013.jpg',
          'http://www.ceieg.chiapas.gob.mx/home/'];
      }else if (index == 3) {
        return [
          'https://www.cedes.unach.mx/images/header_logos_-03.jpg',
          'https://www.conacyt.gob.mx/'];
      }
      else if(index == 4) {
        return [
          'https://www.cedes.unach.mx/images/fonca_who.jpg',
          'https://fonca.cultura.gob.mx/convocatorias-abiertas/'];
      }
      else if(index == 5) {
        return [
          'https://www.cedes.unach.mx/images/logo.png',
          'https://www.conricyt.mx/'];
      }
      else if(index == 6) {
        return [
          'https://www.cedes.unach.mx/images/Screenshot_2020-06-16-Inicio---Ciencia-a-domicilio---Divulgacin-de-la-Ciencia-UNAM.png',
          'http://www.dgdc.unam.mx/ciencia-a-domicilio/'];
      }
      else if(index == 7) {
        return [
          'https://www.cedes.unach.mx/images/logofindacionunam.png',
          'https://www.fundacionunam.org.mx/unam/'];
      }
      else if(index == 8) {
        return [
          'https://www.cedes.unach.mx/images/logo-espiritu-web.png',
          'http://www.turismochiapas.gob.mx/sectur/index.php'];
      }
      else if(index == 9) {
        return [
          'https://www.cedes.unach.mx/images/clad.png',
          'https://clad.org/'];
      }
      else if(index == 10) {
        return [
          'https://www.cedes.unach.mx/images/icti.png',
          'https://icti.chiapas.gob.mx/'];
      }
      else if(index == 11) {
        return [
          'https://www.cedes.unach.mx/images/logo-blanco.png',
          'http://www.educacionchiapas.gob.mx/'];
      }
      else if(index == 12) {
        return [
          'https://www.cedes.unach.mx/images/prodep.png',
          'http://www.dgesu.ses.sep.gob.mx/PRODEP.htm'];
      }
      else if(index == 13) {
        return [
          'https://www.cedes.unach.mx/images/cunoroc.png',
          'http://www.cunoroc.edu.gt/joomla30/'];
      }
      else if(index == 14) {
        return [
          'https://www.cedes.unach.mx/images/flacso.png',
          'https://flacso.org/'];
      }
      else if(index == 15) {
        return [
          'https://www.cedes.unach.mx/images/dvdinternagtional.png',
          'https://www.dvv-international.mx/regional.php'];
      }
      else if(index == 16) {
        return [
          'https://www.cedes.unach.mx/images/logo1.png',
          'https://www.proteccioncivil.chiapas.gob.mx/'];
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
              if (cellIndex == 0) {
                return GestureDetector(
                  onTap: () {
                    _launchURL(rowData[1]);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      cellData,
                      width: 100, // Tamaño de la imagen
                      height: 100,
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
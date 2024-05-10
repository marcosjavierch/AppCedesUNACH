import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TablaLegislacion extends StatelessWidget {
  const TablaLegislacion({Key? key}) : super(key: key);


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
    List<List<String>> data = List.generate(23, (index) {
      if (index == 0) {
        return ['No.', 'Nombre', 'Medio de publicación', 'Número de publicación', 'Fecha de publicación'];
      } else if (index == 1) {
        return ['1',
          'Ley Orgánica de la Universidad Autónoma de Chiapas',
          'Periódico Oficial Órgano de Difusión Oficial del Gobierno Constitucional del Estado Libre y Soberano de Chiapas',
          'Periódico No. 84 Decreto número 165',
          '12 de febrero de 2020'];
      } else if (index == 2) {
        return ['2',
          'Ley Orgánica de la Universidad Autónoma de Chiapas - Edición bilingüe',
          'Periódico Oficial Órgano de Difusión Oficial del Gobierno Constitucional del Estado Libre y Soberano de Chiapas',
          'Periódico No. 84 Decreto número 165',
          '12 de febrero de 2020'];
      }else if (index == 3) {
        return ['3',
          ' Estatuto Integral de la Universidad Autónoma de Chiapas',
          '',
          '',
          '22 de agosto de 2022'];

      }
      else if(index == 4) {
        return ['4',
          'Reglamento General de la Comisión Mixta Permanente de Seguridad e Higiene de la Universidad Autónoma de Chiapas',
          'Suplemento de la Gaceta UNACH',
          'Suplemento No.9, Gaceta No. 25',
          '25 de agosto de 2006'];
      }
      else if(index == 5) {
        return ['5',
          'Reglamento del Servicio Social de la Universidad Autónoma de Chiapas',
          'Suplemento de la Gaceta UNACH',
          '',
          '9 de diciembre de 2021'];
      }
      else if(index == 6) {
        return ['6',
          'Reglamento del Centro de Educación Continua y a Distancia de la UNACH',
          'Suplemento de la Gaceta Universitaria',
          'Suplemento No. 10 de la gaceta Universitaria No. 26',
          '31 de Octubre de 2006'];
      }
      else if(index == 7) {
        return ['7',
          'Manual de Procedimientos para la Prestación del Servicio Social',
          '',
          '',
          ''];
      }
      else if(index == 8) {
        return ['8',
          'Reglamento del Programa de Estímulos al Desempeño del Personal Docente.',
          '',
          '',
          '22 de diciembre 2021'];
      }
      else if(index == 9) {
        return ['9',
          'Lineamientos para la creación, publicación y administración de la familia de sitios web de la Universidad Autónoma de Chiapas\n\nManual técnico para la creación, publicación y administración de la familia de sitios web de la Universidad Autónoma de Chiapas',
          '',
          '',
          '26 de septiembre de 2017'];
      }
      else if(index == 10) {
        return ['10',
          'Manual técnico para la creación, publicación y administración de la familia de sitios web de la Universidad Autónoma de Chiapas',
          '',
          '',
          '26 de septiembre de 2017'];
      }
      else if(index == 11) {
        return ['11',
          'Normas que regulan la aplicación de viáticos y pasajes en la Universidad Autónoma de Chiapas',
          '',
          '',
          ''];
      }
      else if(index == 12) {
        return ['12',
          'Anexo',
          '',
          '',
          ''];
      }
      else if(index == 13) {
        return ['13',
          'Formato único de comisión',
          '',
          '',
          ''];
      }
      else if(index == 14) {
        return ['14',
          'Acuerdo por el que se expiden los lineamientos en materia de entrega recepción de la Universidad Autónoma de Chiapas',
          '',
          '',
          ''];
      }
      else if(index == 15) {
        return ['15',
          ' Acuerdo por el que se modifican los lineamientos en materia de entrega-recepción',
          '',
          '',
          ''];
      }
      else if(index == 16) {
        return ['16',
          'Guía para el proceso de entrega',
          '',
          '',
          ''];
      }
      else if(index == 17) {
        return ['17',
          'Formatos de entrega recepción',
          '',
          '',
          ''];
      }
      else if(index == 18) {
        return ['18',
          'Acuerdo por el que se establecen políticas estratégicas para el uso eficiente y transparente de los recursos públicos, y las acciones de disciplina presupuestaria en el ejercicio del gasto universitario',
          '',
          '',
          ''];
      }
      else if(index == 19) {
        return ['19',
          'Manual técnico de conservación para la infraestructura física educativa',
          '',
          '',
          ''];
      }
      else if(index == 20) {
        return ['20',
          'Acuerdo por el que se establecen los requisitos de las y los integrantes del Consejo Universitario y de los Consejos Técnicos de las Unidades Académicas de la Universidad',
          '',
          '',
          ''];
      }
      else if(index == 21) {
        return ['21',
          'Reglamento para la Planeación Académica Docente de la Universidad Autónoma de Chiapas',
          '',
          '',
          '22 de agosto de 2022'];
      }
      else if(index == 22) {
        return ['22',
          'Acuerdos por el que se Modifican los Acuerdos de Creación del Centro de Estudios para el Desarrollo Municipal y Políticas Públicas',
          '',
          '',
          '20 de noviembre de 2009'];
      }
      return ['${index}'];
    });

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Table(
        border: TableBorder.all(),
        columnWidths: const {
          0: FlexColumnWidth(0.5),
          1: FlexColumnWidth(1.5),
          2: FlexColumnWidth(1.3),
          4: FlexColumnWidth(1),
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
                      _launchURL("www.unach.mx/images/documentos/LEY_ORGaNICA_DE_LA_UNIVERSIDAD_AUToNOMA_DE_CHIAPAS.pdf");
                    } else if (rowIndex == 2 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/Ley-organica-bilingue.pdf");
                    }
                    else if (rowIndex == 3 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/legislacion/Estatuto-Integral-de-la-Universidad-Autonoma-de-Chiapas_22.pdf");
                    }
                    else if (rowIndex == 4 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/legislacion/documentos_pdf/5RegGral_ComMixtaPerm.pdf");
                    }
                    else if (rowIndex == 5 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/legislacion/Reglamento-del-Servicio-Social-22.pdf");
                    }
                    else if (rowIndex == 6 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/legislacion/documentos_pdf/reglamento_del_ceducad.pdf");
                    }
                    else if (rowIndex == 7 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/legislacion/documentos_pdf/manual_procedimientos_prestacion_servicio_soc.pdf");
                    }
                    else if (rowIndex == 8 && cellIndex == 1) {
                      _launchURL("https://www.unach.mx/images/documentos/legislacion/ReglamentoPEDPEDD_22_12_2021.pdf");
                    }
                    else if (rowIndex == 9 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/lineamientos_creacion_publicacion_administracion_familiasitios_web.pdf");
                    }
                    else if (rowIndex == 10 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/manual_tecnico.pdf");
                    }
                    else if (rowIndex == 11 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/legislacion/lineamientos/normas_que_regulan.pdf");
                    }
                    else if (rowIndex == 12 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/legislacion/lineamientos/anexo_1.docx");
                    }
                    else if (rowIndex == 13 && cellIndex == 1) {
                      _launchURL("https://www.unach.mx/images/documentos/legislacion/lineamientos/formato_normas.xlsx");
                    }
                    else if (rowIndex == 14 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/legislacion/lineamientos/lineamientos_de_entrega_recepcion_unach.pdf");
                    }
                    else if (rowIndex == 15 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/ACUERDO_MODIFICAN_LINEAMIENTOS_EN_MATERIA_ENTREGA_RECEPCION_2018.pdf");
                    }
                    else if (rowIndex == 16 && cellIndex == 1) {
                      _launchURL("https://www.unach.mx/images/documentos/legislacion/lineamientos/Guia_er_unach.pdf");
                    }
                    else if (rowIndex == 17 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/legislacion/lineamientos/formatos_Entrega_Recepcion.zip");
                    }
                    else if (rowIndex == 18 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/legislacion/lineamientos/ACDO_USO_EFIC__Y_TRANSF_REC_PUB.pdf");
                    }
                    else if (rowIndex == 19 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/legislacion/lineamientos/manual_tecnico_de_conserv.pdf");
                    }
                    else if (rowIndex == 20 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/legislacion/Acuerdo_requisitos_consejo_universitario_y_tecnicos_ua.pdf");
                    }
                    else if (rowIndex == 21 && cellIndex == 1) {
                      _launchURL("www.unach.mx/images/documentos/legislacion/Reglamento-para-la-Planeacion-Academica-Docente_22.pdf");
                    }
                    else if (rowIndex == 22 && cellIndex == 1) {
                      _launchURL("www.unach.mx/2023/AcuerdosCEDES.pdf");
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
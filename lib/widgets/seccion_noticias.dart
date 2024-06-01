import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselNoticias extends StatelessWidget {
  const CarouselNoticias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> imgList = [
      {
        'image': 'https://www.cedes.unach.mx/images/XIV_Simposio_Internacional_Educacin_y_Cultura_-_copia_2.jpg',
        'description': 'XIV Simposio Internacional, Educación y Cultura 2024',
      },
      {
        'image': 'https://cedes.unach.mx/media/k2/items/cache/c75601cf4b798b9bb038a5b73c93d358_M.jpg',
        'description': 'Eclipse Solar Lunar México 2023',
      },
      {
        'image': 'https://cedes.unach.mx/media/k2/items/cache/eefd4fe8f589e64e0e66a4f2937ae4ae_M.jpg',
        'description': 'Alfabetización Digital para Personas Jóvenes y Adultas en Zonas Transfronterizas',
      },
      {
        'image': 'https://cedes.unach.mx/media/k2/items/cache/0692a4e584defe6544ca2abbf7dd2502_M.jpg',
        'description': 'CEDES Realiza Toma de Protesta por Seminario de Titulación y entrega Acta de Evaluación Profesional de Licenciada en Desarrollo Municipal y Gobernabilidad',
      },
      {
        'image': 'https://cedes.unach.mx/media/k2/items/cache/c987a1b31fd3f1f08322280ca0954f48_M.jpg',
        'description': 'Plática virtual ¿Cómo nos enseñan a ser hombres? Masculinidades alternativas',
      },
    ];

    final List<Widget> imageSliders = imgList.map((item) {
      
  return Padding(
    
    padding: const EdgeInsets.symmetric(horizontal: 0.0),
    
    
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(3),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
              border: Border.all(color: Colors.black, width: 0.7),
            ),
            child: Image.network(
              item['image']!,
              fit: BoxFit.cover,
              width: 1000.0,
            ),
          ),
        ),
        SizedBox(height: 5),
        
        Text(
          item['description']!,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white, 
          ),
        ),
      ],
    ),
    
  );
}).toList();


    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        initialPage: 1,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
      ),
      items: imageSliders,
    );
  }
}

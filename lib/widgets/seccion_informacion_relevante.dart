import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselInformacion extends StatelessWidget {
  const CarouselInformacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> imgList = [
      {
        'image': 'https://cedes.unach.mx/media/k2/items/cache/7a6409a35f8223f856dc99651cb33cb1_M.jpg',
        'description': 'Elaboración de artículos científicos de primer nivel',
      },
      {
        'image': 'https://cedes.unach.mx/media/k2/items/cache/18cb4412b3fd96d4c2c15944894f7ea5_M.jpg',
        'description': 'Memorias Congreso Internacional para el Desarrollo Transfronterizo en el marco de los ODS',
      },
      {
        'image': 'https://cedes.unach.mx/media/k2/items/cache/fedea746cd0ecb257a1249d3a2a80bb1_M.jpg',
        'description': 'XV Aniversario CEDES',
      },
      {
        'image': 'https://cedes.unach.mx/media/k2/items/cache/7be335477876db854960134c6e137164_M.jpg',
        'description': 'CEDES entrega acta de evaluación profesional de licenciada en gerencia social',
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
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      );
    }).toList();

    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1.5,
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

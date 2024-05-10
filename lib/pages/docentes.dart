import 'package:unachcedes/widgets/tabla_docentes.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class Docentes extends StatelessWidget {
  const Docentes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        drawer: const MyNavigationDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Docentes'),
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black,
        ),
          backgroundColor: Colors.white,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: ColoredBox(
              color: Color(0xFFFFFFFF),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: TabBar(
                  isScrollable: true,
                tabs: [
                  Tab(text: 'Planta académica'),
                ],
              ),
            ),
          ),
        ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: const [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: TablaDocentes(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

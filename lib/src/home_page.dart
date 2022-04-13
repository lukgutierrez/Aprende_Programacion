import 'package:curso_programacionbasica/src/pages_tabs/plataformas_tabs.dart';
import 'package:curso_programacionbasica/src/pages_tabs/profesores_tabs.dart';
import 'package:flutter/material.dart';
//PANTALLA DE INICIO
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(

            //TABS MENUS
            
            bottom: TabBar(
              tabs: [
                Tab(child: Text("PLATAFORMAS")),
                Tab(
                  child: Text("PROFESORES"),
                ),
                Tab(
                  child: Text("LIBROS"),
                ),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              ListView(children: [Plataformas()]),
              ListView(children: [Profesores()]),
              ListView(children: [Profesores()])
            ],
          ),
        ),
      ),
    );
  }
}

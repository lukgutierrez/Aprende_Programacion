import 'package:curso_programacionbasica/src/pages_tabs/apps_tabs.dart';
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
            backgroundColor: Color(0xff00053C),
            //TABS MENUS

            bottom: TabBar(
              tabs: [
                Tab(
                    child: Text(
                  "PLATAFORMAS",
                  style: TextStyle(fontSize: 12),
                )),
                Tab(
                  child: Text(
                    "PROFESORES",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Tab(
                  child: Text(
                    "APPS",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
            title: Text('(PROGRAMIT;'),
          ),
          body: TabBarView(
            children: [
              ListView(children: [Plataformas()]),
              ListView(children: [Profesores()]),
              ListView(children: [Apps()])
            ],
          ),
        ),
      ),
      theme:
          ThemeData(primaryColor: Color(0xff00053C), accentColor: Colors.white),
    );
  }
}

import 'package:flutter/material.dart';

class PaginaInformativa extends StatefulWidget {
  @override
  State<PaginaInformativa> createState() => _PaginaInformativaState();
}

class _PaginaInformativaState extends State<PaginaInformativa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 400.0,
                height: 200.0,
                color: Colors.red,
              ),
              Positioned(
                left: 10.0,
                bottom: -80,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.blue,
                          width: 50.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: ListTile(
                        title: Text("PLATZI"),
                        subtitle: Text("#NUNCAPARESDEAPRENDER"),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(height: 80.0,color: Colors.transparent,),
          Contenido(),
          Contenido(),
          Contenido(),
        ],
      ),
    );
  }
}

class Contenido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.abc_outlined),
          // leading: ImageIcon(
          //   AssetImage("assets/icon/hlep.png"),
          //   color: Colors.black,
          //   size: 80,
          // ),
          subtitle: Text("Esto sucede cuando ListView no tiene una altura restringida, lo que hace que tenga una altura infinita, puede resolver esto usando dos soluciones"),
          title: Text("DESCRIPCIÓN"),
        ),
      ],
    );
  }
}

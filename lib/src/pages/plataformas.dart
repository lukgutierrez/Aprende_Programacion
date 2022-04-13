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
            children: [
              Container(
                width: 400.0,
                height: 200.0,
                color: Colors.blue,
              ),
            ],
          ),
//CONSEJO CUANDO TRABAJEMOS CON ROW Y LISTTILE.
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.orange,
                    width: 40.0,
                  ),
                ),
              ),
//Al Listtile tenemos que expecificar el tamaño que va a ocupar en el ROW.
//https://stackoverflow.com/questions/62041954/placing-listtiles-in-a-row (Respuesta)
              Expanded(
                child: ListTile(
                  title: Text("PLATZI"),
                  subtitle: Text("#NUNCAPARESDEAPRENDER"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

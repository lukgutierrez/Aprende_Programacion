import 'package:curso_programacionbasica/src/pages/profesores.dart';
import 'package:flutter/material.dart';

//APPS TABS

class Profesores extends StatefulWidget {
  @override
  State<Profesores> createState() => _ProfesoresState();
}

class _ProfesoresState extends State<Profesores> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //APPS
        PlataformasContenido(
          () async {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaginaFernadoHerrera()),
            );
          },
          AssetImage('assets/fenandoherrera.jpg'),
          Text('FERNANDO HERRERA',
              style: TextStyle(fontSize: 15.0, color: Colors.white)),
        ),
      ],
    );
  }
}

//FUNCION DE PLATAFORMAS

PlataformasContenido(pagina, imagenportada, textocontenido) {
  return GestureDetector(
    onTap: pagina,
    child: SizedBox(
      width: 350.0,
      child: Card(
          color: Color(0xff00053C),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          margin: EdgeInsets.all(30),
          elevation: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Column(
              children: <Widget>[
                Image(
                  image: imagenportada,
                ),
                Container(padding: EdgeInsets.all(10), child: textocontenido),
              ],
            ),
          )),
    ),
  );
}

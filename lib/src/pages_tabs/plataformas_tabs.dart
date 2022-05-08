import 'package:curso_programacionbasica/src/pages/plataformas.dart';
import 'package:flutter/material.dart';

//PLATAFORMAS TABS

class Plataformas extends StatefulWidget {
  @override
  State<Plataformas> createState() => _PlataformasState();
}

class _PlataformasState extends State<Plataformas> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        //PLATZI PORTADA
        PlataformasContenido(
          () async {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PaginaInformativaPlatzi()),
            );
          },
          AssetImage('assets/platziportada.png'),
          Text('PLATZI', style: TextStyle(fontSize: 15.0, color: Colors.white)),
        ),

        //EDETEAM PORTADA
        PlataformasContenido(
          () async {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PaginaInformativaEdteam()),
            );
          },
          AssetImage('assets/edeteamportada.png'),
          Text('EDTEAM', style: TextStyle(fontSize: 15.0, color: Colors.white)),
        ),

        //CODIGO FACILITO
        PlataformasContenido(
          () async {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PaginaInformativaCodigoFacilito()),
            );
          },
          AssetImage('assets/codigofacilito.png'),
          Text('CODIGO FACILITO', style: TextStyle(fontSize: 15.0, color: Colors.white)),
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

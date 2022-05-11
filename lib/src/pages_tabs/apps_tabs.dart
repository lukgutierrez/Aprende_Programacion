import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//APPS TABS

class Apps extends StatefulWidget {
  @override
  State<Apps> createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //APPS
        PlataformasContenido(
          () async {
            const url =
                "https://play.google.com/store/apps/details?id=com.sololearn&hl=es_AR&gl=US";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          AssetImage('assets/app1.png'),
          Text('DESCARGAR',
              style: TextStyle(fontSize: 15.0, color: Colors.white)),
        ),
        PlataformasContenido(
          () async {
            const url =
                "https://play.google.com/store/apps/details?id=com.getmimo&hl=es_AR&gl=US";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          AssetImage('assets/app2.png'),
          Text('DESCARGAR',
              style: TextStyle(fontSize: 15.0, color: Colors.white)),
        ),
        PlataformasContenido(
          () async {
            const url =
                "https://play.google.com/store/apps/details?id=com.enki.insights&hl=es_AR&gl=US";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          AssetImage('assets/app3.png'),
          Text('DESCARGAR',
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

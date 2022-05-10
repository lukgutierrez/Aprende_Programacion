import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//FERNANDO HERRERA

class PaginaFernadoHerrera extends StatefulWidget {
  @override
  State<PaginaFernadoHerrera> createState() => _FernadoHerreraState();
}

class _FernadoHerreraState extends State<PaginaFernadoHerrera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.0,
      ),
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                    width: 400.0,
                    height: 180.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/portadafernando.jpg"),
                            fit: BoxFit.cover))),
                Positioned(
                  left: 10.0,
                  bottom: -80,
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(width: 6, color: Color(0xff00053C)),
                            image: DecorationImage(
                                image: AssetImage("assets/logofernando.jpg"),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: 250,
                        child: ListTile(
                          title: Text("FERNANDO HERRERA",
                              style: TextStyle(
                                  fontSize: 20.0, color: Color(0xff00053C))),
                          subtitle: Text("UDEMY"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              height: 80.0,
              color: Colors.transparent,
            ),
            Lista(
                ImageIcon(
                  AssetImage("assets/iconnota.png"),
                  color: Color(0xff00053C),
                  size: 40,
                ),
                Text("DESCRIPCIÓN"),
                Text(
                  "Este curso tiene por objetivo brindarte una base para comenzar tu camino en el desarrollo de aplicaciones de cualquier tipo. Partimos de cero desarrollando nuestra lógica, aprendiendo poco a poco conceptos nuevos hasta llegar a crear un juego creando una aplicación web.",
                  textAlign: TextAlign.justify,
                )),
            Lista(
                ImageIcon(
                  AssetImage("assets/iconfree.png"),
                  color: Color(0xff00053C),
                  size: 40,
                ),
                Text("CURSO"),
                Text("El curso es totalmente gratuito y en español.",
                    textAlign: TextAlign.justify)),
            Lista(
                ImageIcon(
                  AssetImage("assets/herramienta.png"),
                  color: Color(0xff00053C),
                  size: 40,
                ),
                Text("HERRAMIENTAS NECESARIAS"),
                Text("Una computadora y conexion a internet.")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff00053C),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    elevation: 10,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30))),
                onPressed: () async {
                  const url = "https://www.udemy.com/course/programacion-para-principiantes/";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw "Could not launch $url";
                  }
                },
                child: Text("INICIAR CURSO"))
          ],
        ),
      ),
    );
  }
}

Lista(image, titulo, subtitulo) {
  return ListTile(
    leading: image,
    title: titulo,
    subtitle: subtitulo,
  );
}

//FIN FERNANDO HERRERA
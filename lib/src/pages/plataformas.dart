import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//PLATAFORMA PLATZI

class PaginaInformativaPlatzi extends StatefulWidget {
  @override
  State<PaginaInformativaPlatzi> createState() => _PaginaInformativaState();
}

class _PaginaInformativaState extends State<PaginaInformativaPlatzi> {
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
                            image: AssetImage("assets/platziportada2.jpg"),
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
                                image: AssetImage("assets/platzi.jpg"),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: 250,
                        child: ListTile(
                          title: Text("PLATZI",
                              style: TextStyle(
                                  fontSize: 20.0, color: Color(0xff00053C))),
                          subtitle: Text("#NUNCAPARESDEAPRENDER"),
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
                  "Programa desde cero, domina Javascript, entiende HTML y aprende de algoritmos. Sí, desde cero. Entenderás la lógica del código, cómo piensan los programadores y cómo programar juegos, proyectos y hasta robots y electrónica. Aprender a programar no es fácil, pero Platzi lo hace efectivo.",
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
                  const url = "https://platzi.com/programar";
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

//FIN PLATAFORORMA PLATZI

///////////////////////////////////////////////////////////////////////////////////////////////////

//PLATAFORMA EDTEAM

class PaginaInformativaEdteam extends StatefulWidget {
  @override
  State<PaginaInformativaEdteam> createState() =>
      _PaginaInformativaEdteamState();
}

class _PaginaInformativaEdteamState extends State<PaginaInformativaEdteam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xff00053C)),
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
                            image: AssetImage("assets/edeteam.jpg"),
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
                                image: AssetImage("assets/logoedeteam.png"),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: 250,
                        child: ListTile(
                          title: Text("EDTEAM",
                              style: TextStyle(
                                  fontSize: 20.0, color: Color(0xff00053C))),
                          subtitle: Text("#NOTEDETENGAS"),
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
                  "Programar no se trata de código, se trata de lógica. Este curso te enseña la lógica que te permitirá dominar cualquier lenguaje.",
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
                  const url = "https://ed.team/cursos/programacion";
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

///////////////////////////////////////////////////////////////////////////////////

//PLATAFORMA CODIGOFACILITO

class PaginaInformativaCodigoFacilito extends StatefulWidget {
  @override
  State<PaginaInformativaCodigoFacilito> createState() =>
      _PaginaInformativaCodigoFacilitoState();
}

class _PaginaInformativaCodigoFacilitoState
    extends State<PaginaInformativaCodigoFacilito> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xff00053C)),
        elevation: 0.0,
      ),
      body: Column(
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
                          image: AssetImage("assets/codigofacilitococo.png"),
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
                              image: AssetImage("assets/logocodigo.png"),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 250,
                      child: ListTile(
                        title: Text("CODIGO FACILITO",
                            style: TextStyle(
                                fontSize: 20.0, color: Color(0xff00053C))),
                        subtitle: Text("#ESFACILITO"),
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
                "Código Facilito es una de las plataformas de aprendizaje online de programación más grandes de habla hispana. Desde el 2010 formamos programadores en toda América Latina y España enseñando. HTML, JavaScript, React, Python, Rails, Go y mucho más.",
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
                const url =
                    "https://codigofacilito.com/especialidades/introduccion-programacion";
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw "Could not launch $url";
                }
              },
              child: Text("INICIAR CURSO"))
        ],
      ),
    );
  }
}

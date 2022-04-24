import 'package:flutter/material.dart';

class PaginaInformativa extends StatefulWidget {
  @override
  State<PaginaInformativa> createState() => _PaginaInformativaState();
}

class _PaginaInformativaState extends State<PaginaInformativa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  width: 400.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/platzifondo.png"),
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
                          border: Border.all(width: 6, color: Colors.white),
                          image: DecorationImage(
                              image: AssetImage("assets/platzi.jpg"),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle),
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
              Text("El Curso es Totalmente Gratuito y en Español.",
                  textAlign: TextAlign.justify)),
          Lista(
              ImageIcon(
                AssetImage("assets/iconyoutube.png"),
                color: Color(0xff00053C),
                
                size: 40,
              ),
              Text("YOUTUBE"),
              Text("Hacer Ckick")),
          ElevatedButton(onPressed: () {}, child: Text("INICIAR CURSO"))
        ],
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

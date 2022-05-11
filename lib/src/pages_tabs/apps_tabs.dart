import 'package:flutter/material.dart';

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
        ListTile(
          leading: ImageIcon(AssetImage("assets/edeteam.jpg")),
        ),
        Lista(
            ImageIcon(
              AssetImage("assets/edeteam.jpg"),
              color: Colors.transparent,
              size: 50,
            ),
            Text("CURSO"),
            Text("El curso es totalmente gratuito y en español.",
                textAlign: TextAlign.justify)),
      ],
    );
  }
}

//FUNCION DE PLATAFORMAS

Lista(image, titulo, subtitulo) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ListTile(
      leading: image,
      title: titulo,
      subtitle: subtitulo,
    ),
  );
}

import 'package:curso_programacionbasica/src/pages/plataformas.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Plataformas extends StatefulWidget {
  @override
  State<Plataformas> createState() => _PlataformasState();
}

class _PlataformasState extends State<Plataformas> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () async {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaginaInformativa()),
            );
          },
          child: SizedBox(
            width: 400.0,
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.all(30),
                elevation: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/platziportada.png'),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text('PLATZI'),
                      ),
                    ],
                  ),
                )),
          ),
        )
      ],
    );
  }
}

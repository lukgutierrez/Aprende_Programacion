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
            const url = "https://www.youtube.com/watch?v=QTDPOxnfRaI&list=PLv6CkzbbGAlVcPiYTcVdgLtGFleOUskNM";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(15),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: NetworkImage(
                          'https://scontent-gru2-2.xx.fbcdn.net/v/t1.6435-9/49428955_1707602376051589_5233162705212276736_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=174925&_nc_ohc=eqXN2VQV9jkAX_arbsC&_nc_oc=AQky9qMD-gfjA5vnkaAvxaPUDXekjbyFg2ESR18nB-DuCTpy1RG7XPmglcxQCbLdaCU&_nc_ht=scontent-gru2-2.xx&oh=00_AT8jWQ-Fu5RVkQiFIzQlIhExmfShnlUQphrzLc_5uDIeCg&oe=62789A5F'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text('EDTEAM'),
                    ),
                  ],
                ),
              )),
        ),
         GestureDetector(
          onTap: () async {
            const url = "https://ed.team/cursos/programacion";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw "Could not launch $url";
            }
          },
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(15),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: NetworkImage(
                          'https://scontent-gru2-2.xx.fbcdn.net/v/t1.6435-9/49428955_1707602376051589_5233162705212276736_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=174925&_nc_ohc=eqXN2VQV9jkAX_arbsC&_nc_oc=AQky9qMD-gfjA5vnkaAvxaPUDXekjbyFg2ESR18nB-DuCTpy1RG7XPmglcxQCbLdaCU&_nc_ht=scontent-gru2-2.xx&oh=00_AT8jWQ-Fu5RVkQiFIzQlIhExmfShnlUQphrzLc_5uDIeCg&oe=62789A5F'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text('EDTEAM'),
                    ),
                  ],
                ),
              )),
        )
        
      ],
    );
  }
}

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
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            margin: EdgeInsets.all(15),
            elevation: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Column(
                children: <Widget>[
                  Image(
                    image: NetworkImage(
                        'https://scontent.ftuc1-1.fna.fbcdn.net/v/t1.6435-9/60195055_1818484058296753_2322981041121263616_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=19026a&_nc_ohc=Wu9_VBPaPXkAX8pU_hY&_nc_ht=scontent.ftuc1-1.fna&oh=00_AT9moe32yjPRdXhE-eSAiI3l4bCTq7ax7zJmZIHAVRE04A&oe=626DB10F'),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text('PLATZI'),
                  ),
                ],
              ),
            )),
        GestureDetector(onTap: () async {
          const url = "https://www.youtube.com/user/canalfisicaparatodos";
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw "Could not launch $url";
          }
          child:
          Card(
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
                          'https://scontent.ftuc1-1.fna.fbcdn.net/v/t1.6435-9/60195055_1818484058296753_2322981041121263616_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=19026a&_nc_ohc=Wu9_VBPaPXkAX8pU_hY&_nc_ht=scontent.ftuc1-1.fna&oh=00_AT9moe32yjPRdXhE-eSAiI3l4bCTq7ax7zJmZIHAVRE04A&oe=626DB10F'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text('EDTEAM'),
                    ),
                  ],
                ),
              ));
        })
      ],
    );
  }
}

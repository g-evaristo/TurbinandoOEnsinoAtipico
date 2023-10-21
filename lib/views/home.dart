import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'globals.dart' as globals;

import 'controle_fases.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.width;

    String fase_1 = "";
    String fase_2 = "";
    String fase_3 = "";
    String fase_4 = "";

    //globals.fase = 4;

    if (globals.fase == 1) {
      fase_1 = "assets/imagens/dino.jpg";
      fase_2 = "assets/imagens/porco_block.png";
      fase_3 = "assets/imagens/guaxinim_block.png";
      fase_4 = "assets/imagens/preguiça_block.png";
    } else if (globals.fase == 2) {
      fase_1 = "assets/imagens/dino.jpg";
      fase_2 = "assets/imagens/porco.jpg";
      fase_3 = "assets/imagens/guaxinim_block.png";
      fase_4 = "assets/imagens/preguiça_block.png";
    } else if (globals.fase == 3) {
      fase_1 = "assets/imagens/dino.jpg";
      fase_2 = "assets/imagens/porco.jpg";
      fase_3 = "assets/imagens/guaxinim.jpg";
      fase_4 = "assets/imagens/preguiça_block.png";
    } else if (globals.fase == 4) {
      fase_1 = "assets/imagens/dino.jpg";
      fase_2 = "assets/imagens/porco.jpg";
      fase_3 = "assets/imagens/guaxinim.jpg";
      fase_4 = "assets/imagens/preguiça.jpg";
    }

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 1.3,
      scrollDirection: Axis.vertical,
      //precisa colocar o onTap na imagem
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/fase_1_intro");
          },
          child: Padding(
              padding: EdgeInsets.all(10.0), child: Image.asset(fase_1)),
        ),
        GestureDetector(
          onTap: () {
            if (globals.fase >= 2) {
              Navigator.pushNamed(context, "/fase_2_intro");
            }
          },
          child: Padding(
              padding: EdgeInsets.all(10.0), child: Image.asset(fase_2)),
        ),
        GestureDetector(
          onTap: () {
            if (globals.fase >= 3) {
              Navigator.pushNamed(context, "/fase_3_intro");
            }
          },
          child: Padding(
              padding: EdgeInsets.all(10.0), child: Image.asset(fase_3)),
        ),
        GestureDetector(
          onTap: () {
            if (globals.fase >= 4) {
              Navigator.pushNamed(context, "/fase_4_intro");
            }
          },
          child: Padding(
              padding: EdgeInsets.all(10.0), child: Image.asset(fase_4)),
        ),
      ],
    );
  }
}

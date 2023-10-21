import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Fase3Intro extends StatelessWidget {
  const Fase3Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double tamanho = MediaQuery.of(context).size.height * 0.1;
    double tamanho2 = MediaQuery.of(context).size.height * 0.11;
    double top = MediaQuery.of(context).size.height * 0.8;
    return Scaffold(
        backgroundColor: Color(0xFFFFCB99),
        appBar: AppBar(
            title: const Text("Fase 3",
                style: const TextStyle(color: Colors.black)),
            backgroundColor: Color(0xFFFFCB99),
            flexibleSpace: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/fase_3");
                },
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      "assets/imagens/seta_fase_3.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ))),
        body: Container(
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/imagens/lixos_fundo.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Image.asset(
              "assets/imagens/guaxinim_dialog.png",
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ]),
        ));
  }
}

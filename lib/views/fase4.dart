// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'globals.dart' as globals;

class Fase4 extends StatefulWidget {
  const Fase4({Key? key}) : super(key: key);

  @override
  _Fase4State createState() => _Fase4State();
}

GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

class _Fase4State extends State<Fase4> {
  String _num1 = 'num1';
  String _num2 = 'num2';
  String _num3 = 'num3';
  String _num4 = 'num4';

  bool _isNum1Dropped = false;
  bool _isNum2Dropped = false;
  bool _isNum3Dropped = false;
  bool _isNum4Dropped = false;

  int qtd_lapis = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF2CAD3),
        appBar: AppBar(
            title: const Text("Fase 4",
                style: const TextStyle(color: Colors.black)),
            backgroundColor: Color(0xFFF2CAD3),
            flexibleSpace: GestureDetector(
                onTap: () {
                  if (qtd_lapis == 4) {
                    globals.fase = 4;
                    Navigator.pushNamed(context, "/");
                  }
                },
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      "assets/imagens/seta_fase_4.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ))),
        body: Stack(children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            //alignment: Alignment.center,
            child: Column(children: <Widget>[
              Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(15.0),
                              padding: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Visibility(
                                    visible: !_isNum3Dropped,
                                    child: Draggable<String>(
                                      // Data is the value this Draggable stores.
                                      data: _num3,
                                      child: Container(
                                        child: Center(
                                          child: Image.asset(
                                            'assets/imagens/num_3.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                          ),
                                        ),
                                      ),
                                      feedback: Container(
                                        child: Center(
                                          child: Image.asset(
                                            'assets/imagens/num_3.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                          ),
                                        ),
                                      ),
                                      childWhenDragging: Container(
                                        child: Center(
                                          child: Image.asset(
                                            'assets/imagens/preenchimento_num.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: _isNum3Dropped,
                                    child: Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/imagens/preenchimento_num.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: !_isNum2Dropped,
                                    child: Draggable<String>(
                                      // Data is the value this Draggable stores.
                                      data: _num2,
                                      child: Container(
                                        child: Center(
                                          child: Image.asset(
                                            'assets/imagens/num_2.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                          ),
                                        ),
                                      ),
                                      feedback: Container(
                                        child: Center(
                                          child: Image.asset(
                                            'assets/imagens/num_2.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                          ),
                                        ),
                                      ),
                                      childWhenDragging: Container(
                                        child: Center(
                                          child: Image.asset(
                                            'assets/imagens/preenchimento_num.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: _isNum2Dropped,
                                    child: Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/imagens/preenchimento_num.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: !_isNum1Dropped,
                                    child: Draggable<String>(
                                      // Data is the value this Draggable stores.
                                      data: _num1,
                                      child: Container(
                                        child: Center(
                                          child: Image.asset(
                                            'assets/imagens/num_1.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                          ),
                                        ),
                                      ),
                                      feedback: Container(
                                        child: Center(
                                          child: Image.asset(
                                            'assets/imagens/num_1.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                          ),
                                        ),
                                      ),
                                      childWhenDragging: Container(
                                        child: Center(
                                          child: Image.asset(
                                            'assets/imagens/preenchimento_num.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: _isNum1Dropped,
                                    child: Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/imagens/preenchimento_num.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: !_isNum4Dropped,
                                    child: Draggable<String>(
                                      // Data is the value this Draggable stores.
                                      data: _num4,
                                      child: Container(
                                        child: Center(
                                          child: Image.asset(
                                            'assets/imagens/num_4.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                          ),
                                        ),
                                      ),
                                      feedback: Container(
                                        child: Center(
                                          child: Image.asset(
                                            'assets/imagens/num_4.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                          ),
                                        ),
                                      ),
                                      childWhenDragging: Container(
                                        child: Center(
                                          child: Image.asset(
                                            'assets/imagens/preenchimento_num.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: _isNum4Dropped,
                                    child: Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/imagens/preenchimento_num.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Center(
                                child: Image.asset(
                                  'assets/imagens/lapis.png',
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(children: [
                          DragTarget<String>(
                            builder: (
                              BuildContext context,
                              List<dynamic> accepted,
                              List<dynamic> rejected,
                            ) {
                              return Container(
                                child: Image.asset(
                                  _isNum4Dropped
                                      ? 'assets/imagens/num_4.png'
                                      : 'assets/imagens/lapis_4.png',
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                ),
                              );
                            },
                            onWillAccept: (data) {
                              return data == _num4;
                            },
                            onAccept: (data) {
                              setState(() {
                                qtd_lapis = qtd_lapis + 1;
                                _isNum4Dropped = true;
                              });
                            },
                          ),
                          DragTarget<String>(
                            builder: (
                              BuildContext context,
                              List<dynamic> accepted,
                              List<dynamic> rejected,
                            ) {
                              return Container(
                                child: Image.asset(
                                  _isNum3Dropped
                                      ? 'assets/imagens/num_3.png'
                                      : 'assets/imagens/lapis_3.png',
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                ),
                              );
                            },
                            onWillAccept: (data) {
                              return data == _num3;
                            },
                            onAccept: (data) {
                              setState(() {
                                qtd_lapis = qtd_lapis + 1;
                                _isNum3Dropped = true;
                              });
                            },
                          ),
                          DragTarget<String>(
                            builder: (
                              BuildContext context,
                              List<dynamic> accepted,
                              List<dynamic> rejected,
                            ) {
                              return Container(
                                child: Image.asset(
                                  _isNum2Dropped
                                      ? 'assets/imagens/num_2.png'
                                      : 'assets/imagens/lapis_2.png',
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                ),
                              );
                            },
                            onWillAccept: (data) {
                              return data == _num2;
                            },
                            onAccept: (data) {
                              setState(() {
                                qtd_lapis = qtd_lapis + 1;
                                _isNum2Dropped = true;
                              });
                            },
                          ),
                          DragTarget<String>(
                            builder: (
                              BuildContext context,
                              List<dynamic> accepted,
                              List<dynamic> rejected,
                            ) {
                              return Container(
                                child: Image.asset(
                                  _isNum1Dropped
                                      ? 'assets/imagens/num_1.png'
                                      : 'assets/imagens/lapis_1.png',
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                ),
                              );
                            },
                            onWillAccept: (data) {
                              return data == _num1;
                            },
                            onAccept: (data) {
                              setState(() {
                                qtd_lapis = qtd_lapis + 1;
                                _isNum1Dropped = true;
                              });
                            },
                          ),
                        ]),
                      ])),
            ]),
          ),
        ]),
      ),
    );
  }

  void showSnackBarGlobal(BuildContext context, String message) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
      message,
      textScaleFactor: 2,
    )));
  }
}

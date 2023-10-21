// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:app_educacional/routegenerator.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]).then(
    (_) => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    )),
  );
  // runApp(const MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   initialRoute: "/",
  //   onGenerateRoute: RouteGenerator.generateRoute,
  // ));
}

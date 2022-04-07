import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gladiator_adventureresort/view/gettingStartedScree.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

Timer? timer;

Future<void> main() async {
  //timer = Timer.periodic(
  //    Duration(minutes: 30), (Timer t) => ServiceList.refreshToken());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: EasyLoading.init(),
      theme: ThemeData(primarySwatch: Colors.green),
      home: SplashScreen(),
    );
  }
}

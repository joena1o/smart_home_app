import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smart_home/Screens/LoginScreen/LoginScreen.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 2), (){
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_)=> const LoginScreen())
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
      alignment: Alignment.center,
      width: size.width,
      height: size.height,
      child: const Text("Smart Home System", style: TextStyle(fontSize: 32),),
    ));
  }
}

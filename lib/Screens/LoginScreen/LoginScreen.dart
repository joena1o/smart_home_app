import 'package:flutter/material.dart';
import 'package:smart_home/Screens/DashboardScreen/DashboardScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [

            const SizedBox(height: kToolbarHeight*2,),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: size.width,
              child: const Text("Login", style: TextStyle(color: Colors.black, fontSize: 23),),
            ),

            const SizedBox(height: 50,),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: size.width,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Enter username"
                ),
              ),
            ),

            const SizedBox(height: 20,),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: size.width,
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Enter pin"
                ),
              ),
            ),

            const SizedBox(height: 30,),

            Container(
              alignment: Alignment.topRight,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: size.width,
              child: const Text("Forgotten Password?", style: TextStyle(color: Colors.black, fontSize: 16),),
            ),

            const SizedBox(height: 40,),

            GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_)=> const DashboardScreen())
                  );
                },
                child:Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color:Colors.blue
                ),
                width: size.width,
                child: const Text("Login", style: TextStyle(color: Colors.white, fontSize: 20),),
            )),


            const SizedBox(height: 50,),


          ],


        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        children: [

          const SizedBox(height: 30,),

          ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child:Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
              color: Colors.black,
            ),
          )),

          const SizedBox(height: 30,),

          const Text("Hyefur Jonathan", style: TextStyle(fontSize: 16),),

          const SizedBox(height: 20,),

          const Text("jonathanhyefur@gmail.com", style: TextStyle(fontSize: 16),)

        ],
      ),
    );
  }
}

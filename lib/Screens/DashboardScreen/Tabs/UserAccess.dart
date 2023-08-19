import 'package:flutter/material.dart';
import 'package:smart_home/Screens/QrScanner/QrScanner.dart';

class UserAccess extends StatefulWidget {
  const UserAccess({Key? key}) : super(key: key);

  @override
  State<UserAccess> createState() => _UserAccessState();
}

class _UserAccessState extends State<UserAccess> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        children: [

          Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              margin : const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    blurRadius: 1,
                    blurStyle: BlurStyle.outer,
                    spreadRadius: 1,
                    color: Colors.grey.withOpacity(0.3))
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Add User Access"),
                  IconButton(onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_)=> const QrScanner())
                    );
                  }, icon: const Icon(Icons.add))
                ],
              )

          ),

          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            margin : const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: size.width,
              child:Row(
                children: const [
                  Icon(Icons.people),
                   SizedBox(width: 10,),
                   Text(
                    "3",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ) ),

          const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Divider()),

          Expanded(child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext ctx, i){
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              width: size.width,
              height: 75,
              child:
                  const ListTile(
                    title: Text("Hyefur Jonathan"),
                    subtitle: Text("25 july, 2023 12:01"),
                    trailing: Icon(Icons.delete, color: Colors.red,),
              ),
            );
          }))

        ],
      ),
    );
  }
}

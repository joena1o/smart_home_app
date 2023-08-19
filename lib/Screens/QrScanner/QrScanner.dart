import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({Key? key}) : super(key: key);

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text("Add User", style: TextStyle(fontSize: 16),),
        elevation: 0,
      ),
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [

              const SizedBox(height: 30,),

              const Text("Scan to register user", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),

              const SizedBox(height: 30,),

              QrImageView(
                data: '1234567890',
                version: QrVersions.auto,
                size: 300.0,
              ),


            ],
          ),
    ));
  }
}

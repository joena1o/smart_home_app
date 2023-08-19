import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Container(
      width: size.width,
      height: size.height,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            height: 15,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1,
                      blurStyle: BlurStyle.outer,
                      spreadRadius: 1,
                      color: Colors.grey.withOpacity(0.4))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Surveillance",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                ToggleSwitch(
                  minWidth: 90,
                  minHeight: 50.0,
                  initialLabelIndex: 0,
                  cornerRadius: 10.0,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  totalSwitches: 2,
                  icons: const [
                    Icons.cancel,
                    Icons.security,
                  ],
                  iconSize: 20.0,
                  activeBgColors: const [
                    [Colors.black45, Colors.black26],
                    [Colors.blue, Colors.blueAccent]
                  ],
                  animate:
                      false, // with just animate set to true, default curve = Curves.easeIn
                  curve: Curves
                      .bounceInOut, // animate must be set to true when using custom curve
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Status: ON"),
              ],
            ),
          ),
          Container(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 1,
                          color: Colors.grey.withOpacity(0.4))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Lights",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ToggleSwitch(
                      minWidth: 90,
                      minHeight: 50.0,
                      initialLabelIndex: 0,
                      cornerRadius: 10.0,
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.grey,
                      inactiveFgColor: Colors.white,
                      totalSwitches: 2,
                      icons: const [
                        Icons.light_mode_outlined,
                        Icons.light_mode
                      ],
                      iconSize: 20.0,
                      activeBgColors: const [
                        [Colors.black45, Colors.black26],
                        [Colors.yellow, Colors.orange]
                      ],
                      animate:
                          false, // with just animate set to true, default curve = Curves.easeIn
                      curve: Curves
                          .bounceInOut, // animate must be set to true when using custom curve
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Number: 1/20",
                      style: TextStyle(fontSize: 14),
                    ),
                    const Text("Status: ON"),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 1,
                          color: Colors.grey.withOpacity(0.4))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Door",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ToggleSwitch(
                      minWidth: 90,
                      minHeight: 50.0,
                      initialLabelIndex: 0,
                      cornerRadius: 10.0,
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.grey,
                      inactiveFgColor: Colors.white,
                      totalSwitches: 2,
                      icons: const [
                        Icons.door_back_door_outlined,
                        Icons.door_back_door
                      ],
                      iconSize: 20.0,
                      activeBgColors: const [
                        [Colors.black45, Colors.black26],
                        [Colors.green, Colors.greenAccent]
                      ],
                      animate:
                          false, // with just animate set to true, default curve = Curves.easeIn
                      curve: Curves
                          .bounceInOut, // animate must be set to true when using custom curve
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Status: ON"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}

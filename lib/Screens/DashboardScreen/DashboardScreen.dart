import 'package:flutter/material.dart';
import 'package:smart_home/Screens/DashboardScreen/Tabs/HomeTab.dart';
import 'package:smart_home/Screens/DashboardScreen/Tabs/NotificationTab.dart';
import 'package:smart_home/Screens/DashboardScreen/Tabs/ProfileTab.dart';
import 'package:smart_home/Screens/DashboardScreen/Tabs/UserAccess.dart';
import 'package:smart_home/Screens/SettingsScreen/SettingsScreen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int currentTab = 0;

  List tabs = [
    const HomeTab(),
    const UserAccess(),
    const NotificationTab(),
    const ProfileTab()
  ];

  List<String> tabTitle = [
    "My Home",
    "User Access",
    "Notification",
    "Profile"
  ];


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,

        title:  Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(tabTitle[currentTab])),

        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_)=> const SettingScreen())
              );
            },
            icon: const Icon(Icons.settings),
          ),
          const SizedBox(width: 10,)
        ],
      ),
      body: tabs[currentTab],
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){
                setState(()=> currentTab = 0);
              }, icon: const Icon(Icons.home)),
              IconButton(onPressed: (){
                setState(()=> currentTab = 1);
              }, icon: const Icon(Icons.people)),
              IconButton(onPressed: (){
                setState(()=> currentTab = 2);
              }, icon: const Icon(Icons.notifications)),
              IconButton(onPressed: (){
                setState(()=> currentTab = 3);
              }, icon: const Icon(Icons.person))
            ],
          ),
        ),
      ),
    );
  }
}

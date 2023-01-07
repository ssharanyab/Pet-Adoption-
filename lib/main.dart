import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pet_adoption/controller_binding.dart';
import 'package:pet_adoption/views/screens/history.dart';
import 'package:pet_adoption/views/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBinding(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BodyPage(),
    );
  }
}

class BodyPage extends StatefulWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  List<Widget> bottomNavList = <Widget>[
    HomePage(),
    History(),
  ];
  int _selectedIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.orange[700],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          height: 75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // IconButton(
                    //   icon: Icon(Icons.home),
                    //   onPressed: () {
                    //     setState(() {
                    //       _selectedIndex = 0;
                    //     });
                    //   },
                    // ),
                    Icon(Icons.home),
                    Text('Home')
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.history),
                    Text('History'),
                    // IconButton(
                    //   icon: Icon(Icons.history),
                    //   onPressed: () {
                    //     setState(() {
                    //       _selectedIndex = 1;
                    //     });
                    //   },
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   elevation: 10,
      //   backgroundColor: Colors.orange[700],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.black,
      //   unselectedItemColor: Colors.white,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.pets),
      //       label: 'History',
      //     ),
      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      // ),
      body: bottomNavList.elementAt(_selectedIndex),
    );
  }
}

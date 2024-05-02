import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lesson2/view/pages/add_page.dart';
import 'package:lesson2/view/pages/home_page.dart';
import 'package:lesson2/view/pages/profile_page.dart';
import 'package:lesson2/view/pages/reels_page.dart';
import 'package:lesson2/view/pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // environment variables
  final List<Widget> pages = <Widget>[
    const HomePage(),
    const SearchPage(),
    const AddPage(),
    const ReelsPage(),
    const ProfilePage(),
  ];
  int currentIndex = 0;

  // starting code
  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.red,
        currentIndex: currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "",
          ),
        ],
        onTap: (i) {
          currentIndex = i;
          setState(() {
            
          });
        },
      ),
    );
  }
}

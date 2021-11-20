import 'package:elancer_fistproject/models/bn_screen.dart';
import 'package:elancer_fistproject/screens/bn_screens/blog_screen.dart';
import 'package:elancer_fistproject/screens/bn_screens/cosmetics_Screen.dart';
import 'package:elancer_fistproject/screens/bn_screens/home_screen.dart';

import 'package:flutter/material.dart';
class MainScreen extends StatefulWidget {
   const MainScreen({Key? key, }) : super(key: key);


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex=0;

  final List<BnScreen> _bnScreens=[
    BnScreen(title:'Home' ,bodyWidget: const HomeScreen()),
    BnScreen(title:'Cosmetics' ,bodyWidget:const CosmeticsScreen()),
    BnScreen(title:'Blog' ,bodyWidget:const BlogScreen()),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
     extendBodyBehindAppBar: true,
    // appBar: AppBar(
    // //   title: Text(_bnScreens[_currentIndex].title),
    // // backgroundColor: Colors.pink.shade200,
    //   backgroundColor: Colors.transparent,
    // ),
      body: _bnScreens[_currentIndex].bodyWidget,

      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex=value;
          });
        },
        currentIndex: _currentIndex,
        //type: BottomNavigationBarType.shifting, 'if items> 3 & the color selected from each item & we can decide in wich state we want show label or not'
        //showSelectedLabels: true,
        //showUnselectedLabels: true,
        type:BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 10,
        // fixedColor: Colors.pink,
        // selectedItemColor: Colors.pink, just use one fixed or selected to change color of selected item'icon & label'
        //selectedIconTheme:IconThemeData( Colors.pink), to change color og selected item only icon
        // so if i want to make different colors for label and icon i'll use icontheme and one of(itemColor or fixedColor)

        selectedItemColor: Colors.blue,
        selectedIconTheme: IconThemeData(color: Colors.blue.shade400),
        selectedFontSize: 14,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1.1),



        unselectedItemColor: Colors.grey,
        unselectedIconTheme:  IconThemeData(color:Colors.grey.shade800,
          //size: 24
        ),
        unselectedFontSize: 14,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1),

        //iconSize: 24,// the most priority to put iconSize in IconThemeData and the most in Icon in BNB
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home'),


          BottomNavigationBarItem(
            activeIcon:Icon(Icons.article),
            icon:Icon(Icons.article_outlined),
              //  size: 24

            label:'Cosmetics',

          ),
          BottomNavigationBarItem(
            activeIcon:Icon(Icons.article),
            icon:Icon(Icons.article_outlined),
            label:'Blog',

          ),
       //   BottomNavigationBarItem(
       //     activeIcon:Icon(Icons.settings),
       //     icon:Icon(Icons.settings_outlined),
       //     label:'Settings',
//
       //   )
        ],
      ),
    );
  }
}

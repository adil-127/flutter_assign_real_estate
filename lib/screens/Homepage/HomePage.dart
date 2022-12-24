
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Homepage/components/BottomImage.dart';
import 'package:flutter_application_1/screens/Homepage/components/Categories.dart';
import 'package:flutter_application_1/screens/Homepage/components/NearlyLocation.dart';
import 'package:flutter_application_1/screens/widgets/circleAvatar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Location",style: TextStyle(fontSize: 15,color: Colors.black),),
                        Text("Los Angeles, CA",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                      ],)),
                      circleAvator(radius: 28, image: "assets/moiz1.jpg")
                ],),
                  SizedBox(height: 5,),
                  Text("Discover",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
                  Text("Suitable Property",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),

                  Categor(),

                   SizedBox(height: 8,), 
                  BottomImage(),
                  SizedBox(height: 10,), 
                  NearlyLocation()
            ],),
        )),
            bottomNavigationBar: NavBar(), 
    );
    
  }
}

class NavBar extends StatefulWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;  
  static const List<Widget> _widgetOptions = <Widget>[  
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
  ];  
  
  void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(  
        items: const <BottomNavigationBarItem>[  
          BottomNavigationBarItem(  
    icon: Icon(Icons.home),
    label: "Home",  
      //title: Text('Home'),  
    backgroundColor: Colors.green  
          ),  
          BottomNavigationBarItem(  
    icon: Icon(Icons.search),  
    label:  "Search",
    //title: Text('Search'),  
    backgroundColor: Colors.yellow  
          ),  
          BottomNavigationBarItem(  
    icon: Icon(Icons.person),  
    label: "Profile",
    //title: Text('Profile'),  
    backgroundColor: Colors.blue,  
          ), 
           BottomNavigationBarItem(  
    icon: Icon(Icons.bookmark_border),
    label: "BookMark",  
      //title: Text('Home'),  
    backgroundColor: Colors.pink  
          ), 
        ],  
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black87.withOpacity(0.7),
        currentIndex: _selectedIndex,  
        selectedItemColor: Colors.white,  
        iconSize: 35,  
        onTap: _onItemTapped,  
        elevation: 0

      );
  }
}


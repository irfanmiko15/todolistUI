import 'package:flutter/material.dart';
import 'package:todoapps/reusable/constant.dart';
import 'package:todoapps/screen/MyTask.dart';
import 'package:todoapps/screen/addTask.dart';
import 'package:todoapps/screen/profil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  final _widgetOptions = [
    MyTask(),
    Profil(),
   
   
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(                                                   
    borderRadius: BorderRadius.only(                                           
      topRight: Radius.circular(20), topLeft: Radius.circular(20)),            
    boxShadow: [                                                               
      BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 0),       
    ],                                                                         
  ), 
              child: ClipRRect(
           borderRadius: BorderRadius.only(                                           
    topLeft: Radius.circular(20.0),                                            
    topRight: Radius.circular(20.0),                                           
    ), 
                child: BottomNavigationBar(
            
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/file-text.svg'),
                activeIcon: SvgPicture.asset('assets/file-text.svg',color: ColorPalette.primaryColor,),
                title: Text('Overview',style: TextStyle(fontFamily: 'Inter')),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/user.svg'),
                activeIcon: SvgPicture.asset('assets/user.svg',color: ColorPalette.primaryColor,),
                title: Text('Profil',style: TextStyle(fontFamily: 'Inter'),),
              ),
              
            ],

            type: BottomNavigationBarType.fixed,
            
            currentIndex: _selectedIndex,
            fixedColor: ColorPalette.primaryColor,
            onTap: _onItemTapped,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        
        backgroundColor: ColorPalette.primaryColor,
        child: Icon(Icons.add,color: Colors.white,),onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>AddTask()));
        },),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
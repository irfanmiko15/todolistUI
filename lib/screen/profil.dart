import 'package:flutter/material.dart';
import 'package:todoapps/reusable/constant.dart';
import 'package:todoapps/screen/setting.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        actions: [IconButton(icon: Icon(Icons.settings_outlined,color:Colors.black), onPressed: (){

          Navigator.push(context,MaterialPageRoute(builder: (ctx)=>Setting()));
        })],
        backgroundColor: Colors.white,
        title: Text("Profile",style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.bold),),
      ),
      body: Container(
        color: ColorPalette.backgroundColor,
        padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right:20),
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.white),
                      borderRadius: BorderRadius.circular(50),image: DecorationImage(image: NetworkImage(
                    'https://cdn0-production-images-kly.akamaized.net/IcDizqR5vu6mDzrt1ll97X3JPo0=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3205482/original/064936400_1597134942-1.JPG',
                    
                  ),fit: BoxFit.cover,
                   )
                  ),
                 height: 75,
                    width: 75,
                  
                ),
                Text("Jennie Kim",style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'Poppins',fontSize: 16),)
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top:30,bottom:10),
              child:Text("Name",style: TextStyle(color: ColorPalette.greyColor,fontFamily: 'Inter',fontSize: 14,fontWeight: FontWeight.w400),)),
         Padding(
              padding: EdgeInsets.only(bottom:20),
              child:Text("Jennie Kim",style: TextStyle(color:Colors.black,fontFamily: 'Poppins',fontSize: 16,fontWeight: FontWeight.w600),)),
           Padding(
              padding: EdgeInsets.only(top:10,bottom:10),
              child:Text("Email",style: TextStyle(color: ColorPalette.greyColor,fontFamily: 'Inter',fontSize: 14,fontWeight: FontWeight.w400),)),
         Padding(
              padding: EdgeInsets.only(bottom:20),
              child:Text("JennieKim@gmail.com",style: TextStyle(color:Colors.black,fontFamily: 'Poppins',fontSize: 16,fontWeight: FontWeight.w600),)),
         Padding(
              padding: EdgeInsets.only(top:10,bottom:10),
              child:Text("Birth",style: TextStyle(color: ColorPalette.greyColor,fontFamily: 'Inter',fontSize: 14,fontWeight: FontWeight.w400),)),
         Padding(
              padding: EdgeInsets.only(bottom:20),
              child:Text("11 April 1997",style: TextStyle(color:Colors.black,fontFamily: 'Poppins',fontSize: 16,fontWeight: FontWeight.w600),)),
         
          ],
        ),
      ),
    );
  }
}

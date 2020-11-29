import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todoapps/reusable/constant.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Setting",
          style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: ColorPalette.backgroundColor,
        padding: EdgeInsets.fromLTRB(5,10,5,10),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical:10,horizontal:10),
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ColorPalette.primaryColor.withOpacity(0.3)),
                child: SvgPicture.asset(
                  'assets/user.svg',
                  color: Colors.white,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 16),
                    ),
                  ),
                  Text(
                    "Edit your personal information",
                    style: TextStyle(
                        color: ColorPalette.greyColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.black,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical:10,horizontal:10),
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ColorPalette.primaryColor.withOpacity(0.3)),
                child: SvgPicture.asset(
                  'assets/unlock.svg',
                  color: Colors.white,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Privacy & Security",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 16),
                    ),
                  ),
                  Text(
                    "Password Account",
                    style: TextStyle(
                        color: ColorPalette.greyColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.black,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical:10,horizontal:10),
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ColorPalette.primaryColor.withOpacity(0.3)),
                child: SvgPicture.asset(
                  'assets/alert-circle.svg',
                  color: Colors.white,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "About this app",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 16),
                    ),
                  ),
                  Text(
                    "Legal information",
                    style: TextStyle(
                        color: ColorPalette.greyColor,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                ],
              ),
              trailing: Text("v1.2.3",style: TextStyle(color: ColorPalette.greyColor,fontWeight: FontWeight.w400,fontSize: 10,
                        fontFamily: 'Poppins',),)
            )
          ],
        ),
      ),
    );
  }
}

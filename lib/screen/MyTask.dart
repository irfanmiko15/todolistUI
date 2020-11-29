import 'package:flutter/material.dart';
import 'package:todoapps/reusable/constant.dart';

class MyTask extends StatefulWidget {
  @override
  _MyTaskState createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("My Task",style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: ColorPalette.backgroundColor,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          children: [
            Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Today",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                      color: ColorPalette.primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                )),
            Card(
                child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.panorama_fish_eye,
                        color: ColorPalette.greyColor,
                        size: 20,
                      )),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Get Groceries",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Pergi Ke supermarket",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                              color: ColorPalette.greyColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        )
                      ],
                    ),
                  )),
                  Container(
                    decoration: BoxDecoration(border: Border.all(width:1.5,color:ColorPalette.amColor),borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "08.00 AM",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: ColorPalette.amColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            )),
        Card(
                child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.panorama_fish_eye,
                        color: ColorPalette.greyColor,
                        size: 20,
                      )),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "RPL Project",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Mengerjakan view untuk android",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                              color: ColorPalette.greyColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        )
                      ],
                    ),
                  )),
                  Container(
                    decoration: BoxDecoration(border: Border.all(width:1.5,color:ColorPalette.amColor),borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "10.00 AM",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: ColorPalette.amColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            )),
        Card(
                child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.panorama_fish_eye,
                        color: ColorPalette.greyColor,
                        size: 20,
                      )),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Product design",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Android design update",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                              color: ColorPalette.greyColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        )
                      ],
                    ),
                  )),
                  Container(
                    decoration: BoxDecoration(border: Border.all(width:1.5,color:ColorPalette.pmColor),borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "02.00 PM",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: ColorPalette.pmColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            )),
        Card(
                child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.panorama_fish_eye,
                        color: ColorPalette.greyColor,
                        size: 20,
                      )),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "RPL Project",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Logic Android",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                              color: ColorPalette.greyColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        )
                      ],
                    ),
                  )),
                  Container(
                    decoration: BoxDecoration(border: Border.all(width:1.5,color:ColorPalette.pmColor),borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "06.00 PM",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: ColorPalette.pmColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            )),
             Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Tomorrow",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                      color: ColorPalette.primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                )),
                Card(
                child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.panorama_fish_eye,
                        color: ColorPalette.greyColor,
                        size: 20,
                      )),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "RPL Project",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Mengerjakan view untuk android",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                              color: ColorPalette.greyColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        )
                      ],
                    ),
                  )),
                  Container(
                    decoration: BoxDecoration(border: Border.all(width:1.5,color:ColorPalette.amColor),borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "08.00 AM",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: ColorPalette.amColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            )),
       
                Card(
                child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.panorama_fish_eye,
                        color: ColorPalette.greyColor,
                        size: 20,
                      )),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Get Groceries",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Pergi Ke supermarket",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                              color: ColorPalette.greyColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        )
                      ],
                    ),
                  )),
                  
                  Container(
                    decoration: BoxDecoration(border: Border.all(width:1.5,color:ColorPalette.amColor),borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "09.00 AM",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: ColorPalette.amColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            )),

                 Card(
                child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.panorama_fish_eye,
                        color: ColorPalette.greyColor,
                        size: 20,
                      )),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "RPL Project",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Logic Android",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                              color: ColorPalette.greyColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        )
                      ],
                    ),
                  )),
                  Container(
                    decoration: BoxDecoration(border: Border.all(width:1.5,color:ColorPalette.pmColor),borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "02.00 PM",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: ColorPalette.pmColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            )),
                
        
          ],
        ),
      ),
    );
  }
}

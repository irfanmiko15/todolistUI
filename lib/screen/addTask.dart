import 'package:flutter/material.dart';
import 'package:todoapps/reusable/constant.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          "Add New Task ",
          style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: ColorPalette.backgroundColor,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Title",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        color: ColorPalette.greyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )),
              TextField(
                cursorColor: ColorPalette.primaryColor,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
                decoration: InputDecoration(
                    hintText: "Input a title",
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorPalette.primaryColor, width: 2))),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Description",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        color: ColorPalette.greyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )),
              TextField(
                cursorColor: ColorPalette.primaryColor,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
                decoration: InputDecoration(
                    hintText: "Input a description",
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorPalette.primaryColor, width: 2))),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Ink(
                  child: Container(
                    alignment: Alignment.center,
                    
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: ColorPalette.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: ColorPalette.primaryColor,
                              spreadRadius: 1,
                              blurRadius: 4)
                        ]),
                    child: Text(
                      "ADD TASK",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

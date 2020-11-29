import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';
import 'package:indonesia/indonesia.dart';
import 'package:intl/intl.dart';
import 'package:todoapps/reusable/constant.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

TimeOfDay _selectedStartTime = TimeOfDay.now();

DateTime _selectedDate = DateTime.now();

class _AddTaskState extends State<AddTask> {
 
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showRoundedDatePicker(
      locale: const Locale("id", "ID"),
      height: 320,
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      theme: ThemeData(primarySwatch: ColorPalette.kWhiteColor),
      borderRadius: 16,
      styleDatePicker: MaterialRoundedDatePickerStyle( textStyleDayButton: TextStyle(fontSize: 20, color: Colors.white),
                          textStyleYearButton: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          paddingMonthHeader: EdgeInsets.all(15),
                          textStyleDayHeader: TextStyle(
                            
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          textStyleButtonPositive:
                              TextStyle( color: ColorPalette.primaryColor, fontWeight: FontWeight.bold),
                          textStyleButtonNegative: TextStyle( color: ColorPalette.primaryColor),
                          
                         decorationDateSelected: BoxDecoration(color: ColorPalette.primaryColor,shape: BoxShape.circle),
                         textStyleCurrentDayOnCalendar: TextStyle( color: ColorPalette.primaryColor, fontWeight: FontWeight.bold),
                          ),
                          styleYearPicker: MaterialRoundedYearPickerStyle(
                          textStyleYear: TextStyle( color: Colors.black),
                          textStyleYearSelected:
                              TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),
                          heightYearRow: 50,
                         
                        )
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        //print("po");
        _selectedDate = picked;
      });
  }

  _selectStartTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      
      
      context: context,
      initialTime:
          _selectedStartTime == null ? TimeOfDay.now() : _selectedStartTime,
    );
    if (picked != null && picked != _selectedStartTime)
      setState(() {
        _selectedStartTime = picked;
      });
  }

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Date",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: ColorPalette.greyColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  InkWell(
                    onTap: () => _selectDate(context),
                    child: Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                       tanggal(_selectedDate),
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Time",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: ColorPalette.greyColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  _selectedStartTime == null
                      ? InkWell(
                          onTap: () => _selectStartTime(context),
                          child: Container(
                              padding: EdgeInsets.only(top: 20),
                              child: Text("Pilih Waktu")))
                      : InkWell(
                          onTap: () => _selectStartTime(context),
                          child: Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              _selectedStartTime != null
                                  ? _selectedStartTime.format(context)
                                  : '',
                              style: TextStyle(
                               fontSize: 14.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Ink(
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 30),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

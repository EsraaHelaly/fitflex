import 'package:fitflex/models/SizeConfig.dart';
import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    DateTime selectedDate = DateTime.now();

    Future<void> _selectDate(BuildContext context) async {
      final DateTime picked = await showDatePicker(
          firstDate: DateTime(1900, 12),
          context: context,
          initialDate: selectedDate,
          lastDate: DateTime.now());
      if (picked != null && picked != selectedDate)
        setState(() {
          selectedDate = picked;
        });
    }

    return Scaffold(
      backgroundColor: Color(0xFFE7E7DB),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.safeBlockHorizontal * 5,
          vertical: SizeConfig.safeBlockVertical * 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "LET'S GO",
                style: TextStyle(
                    color: Color(0xFF393939),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 14)),
            Text(
              "let us know you better to provide more trageted support for you",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF5767A3),
                fontSize: 15,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 14, bottom: 83)),
            Row(
              children: [
                Column(
                  children: [
                    Text("Date Of Brith",
                        style: TextStyle(
                          color: Color(0xFF5767A3),
                          fontSize: 18,
                        )),
                    Padding(padding: EdgeInsets.only(top: 27)),
                    Text("Weight",
                        style: TextStyle(
                          color: Color(0xFF5767A3),
                          fontSize: 18,
                        )),
                    Padding(padding: EdgeInsets.only(top: 27)),
                    Text("Height",
                        style: TextStyle(
                          color: Color(0xFF5767A3),
                          fontSize: 18,
                        )),
                  ],
                ),
                Padding(padding: EdgeInsets.only(right: 130)),
                Column(
                  children: [
                    TextButton(
                      onPressed: () => _selectDate(context),
                      child: Text('Select date',
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ),
                    Padding(padding: EdgeInsets.only(top: 27)),
                    Text("no",
                        style: TextStyle(
                          color: Color(0xFF5767A3),
                          fontSize: 18,
                        )),
                    Padding(padding: EdgeInsets.only(top: 27)),
                    Text("no",
                        style: TextStyle(
                          color: Color(0xFF5767A3),
                          fontSize: 18,
                        ))

                    // FittedBox(
                    //   fit: BoxFit.contain,
                    //   child: TextField(
                    //       //     keyboardType: TextInputType.number,
                    //       //     decoration: InputDecoration(
                    //       //       border: InputBorder.none,
                    //       //       hintText: 'Enter your weight',
                    //       //     ),
                    //       ),
                    // ),
                    // TextField(
                    //     // keyboardType: TextInputType.number,
                    //     // decoration: InputDecoration(
                    //     //     border: InputBorder.none,
                    //     //     hintText: 'Enter your height'),
                    //     )
                  ],
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 150)),
            Center(
              child: ElevatedButton(
                child: Text(
                  "Next",
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF91B3D9),
                  textStyle: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
                  padding: EdgeInsets.symmetric(horizontal: 125, vertical: 12),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
// ignore_for_file: unnecessary_new, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CodePicker extends StatefulWidget {
  @override
  _CodePickerState createState() => _CodePickerState();
}

class _CodePickerState extends State<CodePicker> {
  Country? _selectedCountry;

  @override
  void initState() {
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      _selectedCountry = country;
    });
  }

  @override
  Widget build(BuildContext context) {
    final country = _selectedCountry;
    return Container(
      // height: 40,
      // width: 400,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          country == null
              ? Container()
              : Column(
                  children: <Widget>[
                    // Image.asset(
                    //   country.flag,
                    //   package: countryCodePackageName,
                    //   width: 100,
                    // ),
                    SizedBox(
                      height: 16,
                    ),
                    //   Text(
                    //  ,
                    //     textAlign: TextAlign.center,
                    //     style: TextStyle(fontSize: 24),
                    //   ),
                  ],
                ),
          // SizedBox(
          //   height: 100,
          // ),
          // MaterialButton(
          //   child: Text('Select Country using full screen'),
          //   color: Colors.amber,
          //   onPressed: _onPressed,
          // ),
          // SizedBox(
          //   height: 24,
          // ),
          // MaterialButton(
          //   child: Text('Select Country using bottom sheet'),
          //   color: Colors.orange,
          //   onPressed: _onPressedShowBottomSheet,
          // ),
          // SizedBox(
          //   height: 24,
          // ),
          MaterialButton(
            height: 30,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.pink, width: 0.5),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              height: 50,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'PK +92',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  VerticalDivider(
                    indent: 8,
                    endIndent: 8,
                    thickness: 1.0,
                    width: 0.5,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        hintText: '03175959489',
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            color: Colors.black,
            onPressed: _onPressedShowDialog,
          ),
        ],
      ),
    );
  }

  // void _onPressed() async {
  //   final country =
  //       await Navigator.push(context, new MaterialPageRoute(builder: (context) {
  //     return PickerPage();
  //   }));
  //   if (country != null) {
  //     setState(() {
  //       _selectedCountry = country;
  //     });
  //   }
  // }

  // void _onPressedShowBottomSheet() async {
  //   final country = await showCountryPickerSheet(
  //     context,
  //   );
  //   if (country != null) {
  //     setState(() {
  //       _selectedCountry = country;
  //     });
  //   }
  // }

  void _onPressedShowDialog() async {
    final country = await showCountryPickerDialog(
      context,
    );
    if (country != null) {
      setState(() {
        _selectedCountry = country;
      });
    }
  }
}

class PickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 40,
      // width: 400,
      child: CountryPickerWidget(
        onSelected: (country) => Navigator.pop(context, country),
      ),
    );
  }
}

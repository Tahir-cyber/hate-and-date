// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_print, use_key_in_widget_constructors, unused_element, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_picker/language_picker.dart';
import 'package:language_picker/languages.dart';

class LanguagePicker extends StatefulWidget {
  @override
  _LanguagePickerState createState() => _LanguagePickerState();
}

class _LanguagePickerState extends State<LanguagePicker> {
  Language _selectedDropdownLanguage = Languages.english;
  Language _selectedDialogLanguage = Languages.english;
  Language _selectedCupertinoLanguage = Languages.english;

  // It's sample code of Dropdown Item.
  Widget _buildDropdownItem(Language language) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 8.0,
        ),
        Text("${language.name} (${language.isoCode})"),
      ],
    );
  }

  // It's sample code of Dialog Item.
  Widget _buildDialogItem(Language language) => Row(
        children: <Widget>[
          Text(language.name),
          SizedBox(width: 8.0),
          Flexible(child: Text("(${language.isoCode})"))
        ],
      );

  void _openLanguagePickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
            data: Theme.of(context).copyWith(primaryColor: Colors.pink),
            child: LanguagePickerDialog(
                titlePadding: EdgeInsets.all(8.0),
                searchCursorColor: Colors.pinkAccent,
                searchInputDecoration: InputDecoration(hintText: 'Search...'),
                isSearchable: true,
                title: Text('Select your language'),
                onValuePicked: (Language language) => setState(() {
                      _selectedDialogLanguage = language;
                      print(_selectedDialogLanguage.name);
                      print(_selectedDialogLanguage.isoCode);
                    }),
                itemBuilder: _buildDialogItem)),
      );

  // It's sample code of Cupertino Item.
  void _openCupertinoLanguagePicker() => showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return LanguagePickerCupertino(
          pickerSheetHeight: 200.0,
          onValuePicked: (Language language) => setState(() {
            _selectedCupertinoLanguage = language;
            print(_selectedCupertinoLanguage.name);
            print(_selectedCupertinoLanguage.isoCode);
          }),
        );
      });

  Widget _buildCupertinoItem(Language language) => Row(
        children: <Widget>[
          Text("+${language.name}"),
          SizedBox(width: 8.0),
          Flexible(child: Text(language.name))
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 50,
        color: Colors.grey[500],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: LanguagePickerDropdown(
                  initialValue: Languages.english,
                  itemBuilder: _buildDropdownItem,
                  onValuePicked: (Language language) {
                    _selectedDropdownLanguage = language;
                    print(_selectedDropdownLanguage.name);
                    print(_selectedDropdownLanguage.isoCode);
                  },
                ),
              ),
              // Expanded(
              //   child: Center(
              //     child: MaterialButton(
              //       child: Text("Push"),
              //       onPressed: _openLanguagePickerDialog,
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Center(
              //     child: ListTile(
              //       title: _buildCupertinoItem(_selectedCupertinoLanguage),
              //       onTap: _openCupertinoLanguagePicker,
              //     ),
              //   ),
              // ),
            ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

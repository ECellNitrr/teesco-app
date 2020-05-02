import 'package:flutter/material.dart';

List<String> nameOFCountries = [];

class CountryCode extends StatefulWidget {
  @override
  _CountryCodeState createState() => _CountryCodeState();
}

class _CountryCodeState extends State<CountryCode> {
  String _displayCountry = "Select Country";

  @override
  void initState() {
    super.initState();

    nameOFCountries = ['Country1', 'Country2', 'Country3'];
  }

  @override
  Widget build(BuildContext context) {
    var dropdownValue;
    String hintDisplay = "Select Country";
    return DropdownButton<String>(
      value: dropdownValue,
      onChanged: (String newValue) {
        setState(() {
          dropdownValue= newValue;
        });
      },
      items: nameOFCountries.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

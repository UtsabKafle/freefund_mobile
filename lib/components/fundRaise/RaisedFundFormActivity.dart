

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FormComponent/PersonalInfo.dart';


void main() {
  runApp(MaterialApp(home: RaisedFundFormActivity()));
}

class RaisedFundFormActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      return PersonalInfo();

  }

}
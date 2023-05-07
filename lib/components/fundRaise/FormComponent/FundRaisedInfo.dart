import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freefund_mobile/Resources.dart';
import 'package:freefund_mobile/components/fundRaise/FormComponent/PersonalInfo.dart';

import '../RaiseFundActivity.dart';

void main() {
  runApp(FundRaisedInfo());
}

var fundraiseTitle = TextEditingController();
var fundraiseDescription = TextEditingController();
var fundraiseGoal = TextEditingController();

class FundRaisedInfo extends StatelessWidget {
  const FundRaisedInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create Fund"),
        ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "FundRaised and Verification Details",
                        style: Resources.titleBoldText,
                      ),
                    ],
                  ),

                  SizedBox(height: 18.0,),

                  Text(
                    "Insert Title of the program: ",
                    style: Resources.mediumText,
                  ),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                      controller: fundraiseTitle,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text("Insert description of the program: ",
                      style: Resources.mediumText),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                      controller: fundraiseDescription,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text("Upload Victim photos: ", style: Resources.mediumText),
                  TextButton(
                    onPressed: () {
                      // TODO: write code to insert multiple image by the user
                    },
                    child: Text("Upload"),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text("Upload verification photo from victim ward: ",
                      style: Resources.mediumText),
                  TextButton(
                    onPressed: () {
                      // TODO: write code to insert multiple image by the user
                    },
                    child: Text("Upload"),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text("Insert Goals of the program (in Rs.): ",
                      style: Resources.mediumText),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                      controller: fundraiseGoal,
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: () {
                        Navigator.of(context).pop(this);
                      }, child: Text("Back")),

                      ElevatedButton(onPressed: () {
                        
                        // TODO: write program to insert data to the database

                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(
                        //     content: Text('This is a toast'),
                        //     duration: Duration(seconds: 3),
                        //   ),
                        // );

                        Fluttertoast.showToast(
                            msg: "Your program has been submitted.\n Let us verify",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );

                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const RaiseFundFragment()));
                        // Navigator.of(context).popUntil((PersonalInfo) => true);

                      }, child: Text("Submit")),
                    ],
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}

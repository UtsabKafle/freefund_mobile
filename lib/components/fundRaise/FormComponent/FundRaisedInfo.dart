// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freefund_mobile/Resources.dart';
import 'package:freefund_mobile/components/bottomNav/bottomNav.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';

import '../RaiseFundActivity.dart';

void main() {
  runApp(MaterialApp(home: FundRaisedInfo()));
}

var fundraiseTitle = TextEditingController();
var fundraiseDescription = TextEditingController();
var fundraiseGoal = TextEditingController();

class FundRaisedInfo extends StatelessWidget {
  final victimImageController = MultiImagePickerController(
      maxImages: 5,
      allowedImageTypes: ['png', 'jpg', 'jpeg'],
      withData: false,
      withReadStream: true,
      images: <ImageFile>[] // array of pre/default selected images
      );

  final wardVerificationController = MultiImagePickerController(
      maxImages: 2,
      allowedImageTypes: ['png', 'jpg', 'jpeg'],
      withData: false,
      withReadStream: true,
      images: <ImageFile>[] // array of pre/default selected images
      );

  FundRaisedInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Create Fund"),
        ),
        bottomNavigationBar: bottomNav(context),
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
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Insert Title of the program: ",
                  style: Resources.mediumText,
                ),
                ShowTextField(fundraiseTitle),
                const SizedBox(
                  height: 12.0,
                ),
                Text("Insert description of the program: ",
                    style: Resources.mediumText),
                ShowTextField(fundraiseDescription),
                const SizedBox(
                  height: 12.0,
                ),
                Text("Upload Victim photos:(Max 5)",
                    style: Resources.mediumText),
                MultiImagePickerView(
                  controller: victimImageController,
                  padding: const EdgeInsets.all(10),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text("Upload verification photo from victim ward:(Max 2)",
                    style: Resources.mediumText),
                MultiImagePickerView(
                  controller: wardVerificationController,
                  padding: const EdgeInsets.all(10),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text("Insert Goals of the program (in Rs.): ",
                    style: Resources.mediumText),
                ShowTextField(fundraiseGoal),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(this);
                        },
                        child: const Text("Back")),
                    ElevatedButton(
                        onPressed: () {
                          // TODO: write program to insert data to the database
                          // using victimImageController and wardVerificationController variables.
                          // refer to this link https://pub.dev/packages/multi_image_picker_view

                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   const SnackBar(
                          //     content: Text('This is a toast'),
                          //     duration: Duration(seconds: 3),
                          //   ),
                          // );

                          Fluttertoast.showToast(
                              msg:
                                  "Your program has been submitted.\n Let us verify",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);

                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RaiseFundFragment()));
                          // Navigator.of(context).popUntil((PersonalInfo) => true);
                        },
                        child: const Text("Submit")),
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

class ShowTextField extends StatelessWidget {
  var controller;

  ShowTextField(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            )),
        controller: controller,
      ),
    );
  }
}

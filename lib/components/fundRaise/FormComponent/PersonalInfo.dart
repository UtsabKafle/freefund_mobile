
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freefund_mobile/Resources.dart';


var victimName = TextEditingController();
var victimProvince = TextEditingController();
var victimDistrict = TextEditingController();
var victimMun = TextEditingController();
var victimWard = TextEditingController();
var victimNumber = TextEditingController();
var victimRelationToFundraiser = TextEditingController();

void main() {
  runApp(PresonalInfo());
}

class PresonalInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(

          child: Column(
            children: [
              Text("Personal Info of the Victim", style: Resources.titleBoldText,),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name of victim:", style: Resources.mediumText,),
                      SizedBox(
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                            ),
                            controller: victimName,
                          ),
                      ),

                      Divider(height: 20,),

                      Text("Address: ", style: Resources.mediumText,),
                      ShowAddressForm(),

                      Divider(height: 20.0,),

                      Text("Phone number: ", style: Resources.mediumText,),
                      SizedBox(
                        child: TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                          ),
                          controller: victimNumber,
                        ),
                      ),

                      SizedBox(height: 10.0,),

                      Text("Your relation to Victim: ", style: Resources.mediumText,),
                      SizedBox(
                        child: TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                          ),
                          controller: victimRelationToFundraiser,
                        ),
                      ),

                      Divider(height: 20.0,),

                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowAddressForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Province: ", style: Resources.mediumText,),
                        SizedBox(
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )
                            ),
                            controller: victimProvince,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(width: 100,),

                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("District: ", style: Resources.mediumText,),
                        SizedBox(
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )
                            ),
                            controller: victimDistrict,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("VDC/Municipality: ", style: Resources.mediumText,),
                      SizedBox(
                        child: TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                          ),
                          controller: victimMun,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text("Ward No.: ", style: Resources.mediumText,),
                    SizedBox(
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )
                        ),
                        controller: victimWard,
                      ),
                    ),
                ],
              ),
                  )
              )

            ],
          ),

        ],
    );
  }
}
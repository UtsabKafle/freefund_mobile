import 'package:flutter/material.dart';
import 'package:freefund_mobile/Resources.dart';
import 'package:freefund_mobile/components/fundRaise/FormComponent/FundRaisedInfo.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../../bottomNav/bottomNav.dart';

bool isSubmitClicked = false;

var victimName = TextEditingController();
var victimProvince = TextEditingController();
var victimDistrict = TextEditingController();
var victimMun = TextEditingController();
var victimWard = TextEditingController();
var victimNumber = TextEditingController();
var victimRelationToFundraiser = TextEditingController();

void main() {
  runApp(const MaterialApp(home: PersonalInfo()));
}

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  GlobalKey<FormState> personalFormKey = GlobalKey<FormState>();

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
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            child: Form(
              key: personalFormKey,
              child: Column(children: [
                Text(
                  "Personal Info of the Victim",
                  style: Resources.titleBoldText,
                  textAlign: TextAlign.center,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: const InputDecoration(
                        label: Text("Enter Name of Victim"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: "Victim name cannot be empty."),
                      ]),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Address: ",
                      textAlign: TextAlign.start,
                      style: Resources.mediumText,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: const InputDecoration(
                              label: Text("Enter Province"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                            ),
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: "Province cannot be empty."),
                            ]),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: const InputDecoration(
                              label: Text("Enter District"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                            ),
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: "District cannot be empty."),
                            ]),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: const InputDecoration(
                              label: Text("Enter VDC/Municipality"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                            ),
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: "VDC/Mun cannot be empty."),
                            ]),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: const InputDecoration(
                              label: Text("Enter Ward no."),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                            ),
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: "Ward no. cannot be empty."),
                            ]),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: const InputDecoration(
                        label: Text("Phone Number"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: "Phone number cannot be empty."),
                      ]),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: const InputDecoration(
                        label: Text("Your relation to Victim"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: "Your relation cannot be empty."),
                      ]),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                if (personalFormKey.currentState!.validate()) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => FundRaisedInfo()));
                                }
                                // Todo: write program to go to FundRaisedInfo() class
                              },
                              child: const Text("Next")),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  void form() {
    body:
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Phone number: ",
                    style: Resources.mediumText,
                  ),
                  ShowTextField(victimNumber),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Your relation to Victim: ",
                    style: Resources.mediumText,
                  ),
                  ShowTextField(victimRelationToFundraiser),
                  const Divider(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              isSubmitClicked = true;

                              // Todo: write program to go to FundRaisedInfo() class
                            },
                            child: const Text("Next")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freefund_mobile/Donations.dart';

import 'Resources.dart';

void main() {
  runApp(
    MaterialApp(
      home: DonationActivity(),
    ),
  );
}

class DonationActivity extends StatelessWidget {
  String title = "Aama Samuwha";
  String description =
      "Aama Samuha (Nepali: आमा समूह) is a Nepalese voluntary group formed to raise awareness about gender equality, issues affecting women and social issues. It was started in Western Nepal by the Gurung people because Gurung men would leave Nepal to join the British Army (Brigade of Gurkhas), and lately the Indian Army. Aama Samuha was originally started to 'sing, dance and organise cultural activities in the evening'.";
  String image = "https://i.ytimg.com/vi/cv_JcSsY4ow/maxresdefault.jpg";

  int totalDonation = 8000;
  int totalDonationGoal = 10000;

  int noOfDonour = 6;

  String personOrOrganization = "Sujan Aangbo";
  String address = "Sangam Chowk, Jhapa";
  String profileImage =
      "https://www.facebook.com/photo/?fbid=1069157877083747&set=a.105142370151974";
  String contactInfo = "9827931150";

  List<Donations> donorList = Donor().getDonor();

  @override
  Widget build(BuildContext context) {

    // TODO: 1. fetch the value of title, description, image from server

    // TODO: 2. fetch the donation value(total donation, donation goal, no of donour etc)

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("$title"),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 8.0,
                  ),
                  Image.network(
                    image,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  ShowDonationProgress(
                    totalDonation = totalDonation,
                    totalDonationGoal = totalDonationGoal,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Divider(),
                  Column(children: [
                    ShowDonations(noOfDonour),
                    Container(
                      height: 200.0,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return ShowDonationCard(
                              donorList[index].donorName,
                              donorList[index].donationAmount,
                              donorList[index].donationDate);
                        },
                        scrollDirection: Axis.vertical,
                        itemCount: donorList.length,
                      ),
                    ),
                  ]),
                  FundRaiserDetails(personOrOrganization, address,
                      profileImage, contactInfo),
                  SizedBox(
                    height: 8.0,
                  ),
                  ShowDescription(description),
                  SizedBox(
                    height: 8.0,
                  ),
                  ShowButton("Donate"),
                  SizedBox(
                    height: 8.0,
                  ),
                  ShowButton("Share"),
                ],
              ),
            ),
          ),
        ), // ),
      ),
    );
  }
}

class ShowDonations extends StatefulWidget {
  int noOfDonation;

  ShowDonations(this.noOfDonation);

  @override
  State<StatefulWidget> createState() {
    return ShowDonationState();
  }
}

class ShowDonationState extends State<ShowDonations> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Donations (${widget.noOfDonation})",
        style: Resources.titleBoldText,
      ),
    ]);
  }
}

class ShowDonationCard extends StatelessWidget {
  String donorName;
  int donationAmount;
  String donationDate;

  ShowDonationCard(this.donorName, this.donationAmount, this.donationDate);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image.asset(
        //   "profileImage",
        //   width: 20.0,
        //   height: 20.0,
        // ),

        Icon(Icons.person),
        // TODO: change icon to show the rendered image from server
        SizedBox(
          width: 8.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              donorName,
              style: Resources.mediumText,
            ),
            Row(
              children: [
                Text(
                  donationAmount.toString(),
                  style: Resources.mediumText,
                ),
                Text(
                  donationDate,
                  style: Resources.mediumText,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class ShowButton extends StatelessWidget {
  String buttonText;

  ShowButton(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              if (buttonText.toString() == "Donate") {
                print("Donate Button Clicked");
              } else {
                print("Share Button Clicked");
              }
            },
            child: Text(
              "$buttonText",
              style: Resources.mediumText,
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFB0DAFF),
            ),
          ),
        ),
      ],
    );
  }
}

class FundRaiserDetails extends StatelessWidget {
  String personOrOrganization;
  String address;
  String profileImage;
  String contactInfo;

  FundRaiserDetails(this.personOrOrganization, this.address, this.profileImage,
      this.contactInfo);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Text(
          "Fundraiser Details: ",
          style: Resources.titleBoldText,
        ),
        SizedBox(
          height: 4.0,
        ),
        Row(
          children: [
            // Image.asset(
            //   "profileImage",
            //   width: 20.0,
            //   height: 20.0,
            // ),

            Icon(Icons.person),
            // TODO: change icon to show the rendered image from server
            SizedBox(
              width: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  personOrOrganization,
                  style: Resources.mediumText,
                ),
                Text(
                  address,
                  style: Resources.mediumText,
                ),
                Text(
                  contactInfo,
                  style: Resources.mediumText,
                ),
              ],
            ),
          ],
        ),
        Divider()
      ],
    );
  }
}

class ShowDonationProgress extends StatelessWidget {
  int donation, totalDonationGoal;

  ShowDonationProgress(this.donation, this.totalDonationGoal, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      surfaceTintColor: Color(0xFFB9E9FC),
      elevation: 10.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(
              value: donation / totalDonationGoal,
              valueColor: AlwaysStoppedAnimation(Resources.lightBlue),
              backgroundColor: Resources.summerBlue,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "Rs. $donation raised out of Rs. $totalDonationGoal goal",
              style: Resources.mediumText,
            ),
            SizedBox(
              height: 4.0,
            ),
          ],
        ),
      ),
    );
  }
}

class ShowDescription extends StatelessWidget {
  String description;

  ShowDescription(this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "$description",
        style: Resources.mediumText,
      ),
    );
  }
}

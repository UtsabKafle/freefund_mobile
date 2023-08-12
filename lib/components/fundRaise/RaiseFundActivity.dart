import 'package:flutter/material.dart';
import 'package:freefund_mobile/Resources.dart';
import '../bottomNav/bottomNav.dart';
import 'FormComponent/PersonalInfo.dart';

// void main() {
//   runApp(MaterialApp(home: RaiseFundFragment()));
// }

class Fund {
  String fundTitle, fundRaisedDate;
  int totalFundRaised;

  Fund(this.fundTitle, this.fundRaisedDate, this.totalFundRaised);
}

class Funds {
  List<Fund> createFunds() {
    Fund fund1 = Fund("Aama Samuha", "2079/10/11", 10000);
    Fund fund2 = Fund("Buba Samuha", "2079/01/11", 15000);
    Fund fund3 = Fund("Chora Samuha", "2079/10/11", 1000);
    Fund fund4 = Fund("Chori Samuha", "2079/10/11", 1200);

    List<Fund> result = [fund1, fund2, fund3, fund4];

    return result;
  }
}

class RaiseFundFragment extends StatelessWidget {
  const RaiseFundFragment({super.key});

  @override
  Widget build(BuildContext context) {
    List<Fund> funds = Funds().createFunds();

    // if the user hasn't signup
    if (1 == 2) {
      return Scaffold(
        bottomNavigationBar: bottomNav(context),
        body: Center(
          child: Text(
            "Please sign in/up to start raising funds",
            style: Resources.mediumText,
          ),
        ),
      );
    }
    // if user has signup
    else {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              String fundTitle = funds[index].fundTitle;
              String fundDate = funds[index].fundRaisedDate;
              int totalRaisedFund = funds[index].totalFundRaised;

              return ShowRaiseFundList(fundTitle, fundDate, totalRaisedFund);
            },
            itemCount: funds.length,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // TODO: write program to move from RaiseFundActivity to RaisedFundFormActivity
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const PersonalInfo()));
          },
          child: const Icon(Icons.add),
        ),
      );
    }
  }
}

class ShowRaiseFundList extends StatelessWidget {
  String fundTitle, fundRaisedDate;
  int totalFundRaised;

  ShowRaiseFundList(this.fundTitle, this.fundRaisedDate, this.totalFundRaised,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fundTitle,
                  style: Resources.titleBoldText,
                ),
                Text(
                  fundRaisedDate,
                  style: Resources.mediumText,
                )
              ],
            ),
            Text(
              "Rs. $totalFundRaised",
              style: Resources.titleBoldText,
            )
          ],
        ),
      ),
    );
  }
}

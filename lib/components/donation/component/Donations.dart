class Donations {
  String donorName;
  int donationAmount;
  String donationDate;

  Donations(this.donorName, this.donationAmount, this.donationDate);
}

class Donor {

  List<Donations> getDonor() {
    Donations firstDonation = Donations("Sujan", 20000, "2079/01/20");
    Donations secondDonation = Donations("Lalahang", 2500, "2079/01/20");
    Donations thirdDonation = Donations("Nirmal", 10000, "2079/01/20");
    Donations fourthDonation = Donations("Utsav", 5000, "2079/01/20");
    Donations fifthDonation = Donations("Bhabin", 25000, "2079/01/20");

    List<Donations> donorList = [firstDonation, secondDonation, thirdDonation, fourthDonation, fifthDonation];
    return donorList;
}

}
import 'package:flutter/material.dart';
import 'package:freefund_mobile/components/bottomNav/bottomNav.dart'; // Import your bottomNav function
import 'package:freefund_mobile/components/home/components/titleDivider.dart'; // Import your titleDivider function
import 'components/card.dart'; // Import your cardElement function
import 'components/searchbar.dart'; // Import your searchBar function
import 'package:supabase_flutter/supabase_flutter.dart';

//Image.network(
//   'https://www.smilefoundationindia.org/blog/wp-content/uploads/2023/01/Celebrating-Swami-Vivekananda-Jayanti-as-National-Youth-Day-768x768.jpg',
//   fit: BoxFit.fill,
// )
class Home extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  Image img = Image.network(
    'https://www.smilefoundationindia.org/blog/wp-content/uploads/2023/01/Celebrating-Swami-Vivekananda-Jayanti-as-National-Youth-Day-768x768.jpg',
    fit: BoxFit.fill,
  );
  Text txt = const Text(
    "This is a sample text for the application. Also, this is good. Piece of content - Utsab Kafle",
    softWrap: true,
  );
  Widget buildSection(String title, String type, BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleDivider(context, title, type),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                3, // Adjust the number of cards as needed
                (index) => cardElement(context, img, txt, "30", "400"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Free-fund"),
      ),
      bottomNavigationBar: bottomNav(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            searchBar(),
            buildSection("Donations", "donation", context),
            buildSection("Events", "event", context),
            buildSection("Meetings", "events", context),
          ],
        ),
      ),
    );
  }
}

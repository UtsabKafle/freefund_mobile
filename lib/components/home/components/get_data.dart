import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> fetchData() async {
  final response = await supabase.from('your_table_name').select().execute();
  if (response.error != null) {
    print('Error fetching data: ${response.error!.message}');
  } else {
    final data = response.data;
    // Process and use the data as needed
  }
}

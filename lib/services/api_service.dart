import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodays Toons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        print(webtoon);
      }
      return;
    } else {
      print('error');
    }
    throw Error();
  }
}

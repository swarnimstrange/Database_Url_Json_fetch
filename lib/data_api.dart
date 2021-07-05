import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wwe_cards/data.dart';

class UsersApi {
  static Future<List<User>> getUsers() async {
    final url =
        'https://masterfire-3dc55-default-rtdb.firebaseio.com/Data.json';
    final response = await http.get(Uri.parse(url));
    final body = json.decode(response.body);

    return body.map<User>(User.fromJson).toList();
  }
}

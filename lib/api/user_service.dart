
import 'package:http/http.dart' as http;

import 'model/user/user.dart';

abstract class UserService {
  Future<User?> getUser(String token);
}

class HttpUserService implements UserService {
  @override
  Future<User?> getUser(String token) async {
    final http.Response response = await http.get('https://api.bitrise.io/v0.1/me', headers: {'Authorization': token});
    print(response.body);
    return null;
  }

}
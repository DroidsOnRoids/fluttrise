
import 'package:http/http.dart' as http;

import 'model/user/user.dart';

abstract class UserService {
  Future<User?> getUser(String token);
}

class HttpUserService implements UserService {
  @override
  Future<User?> getUser(String token) async {
    final response = await http.get('https://www.api.bitrise.io/v0.1/me', headers: {'Authorization': token});
    print(response);
    return null;
  }

}
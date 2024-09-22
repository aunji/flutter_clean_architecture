import 'package:get/get.dart';
import '../modules/user/models/user_model.dart';

class ApiService extends GetConnect {
  Future<List<UserModel>> fetchUsers() async {
    final response = await get('https://jsonplaceholder.typicode.com/users');
    if (response.status.hasError) {
      return Future.error(response.statusText ?? "Error fetching users");
    } else {
      return (response.body as List)
          .map((userJson) => UserModel.fromJson(userJson))
          .toList();
    }
  }
}

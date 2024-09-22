import 'package:get/get.dart';
import '../models/user_model.dart';
import '../../../services/api_service.dart';

class UserController extends GetxController with StateMixin<List<UserModel>> {
  final ApiService apiService = Get.find<ApiService>();

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  void fetchUsers() async {
    try {
      final users = await apiService.fetchUsers();
      change(users, status: RxStatus.success());
    } catch (e) {
      change(null, status: RxStatus.error("Failed to load users"));
    }
  }
}

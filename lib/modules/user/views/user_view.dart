import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/user_controller.dart';

class UserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserController controller = Get.find<UserController>();

    return Scaffold(
      appBar: AppBar(title: Text('Users')),
      body: controller.obx(
        (users) => ListView.builder(
          itemCount: users?.length ?? 0,
          itemBuilder: (context, index) {
            final user = users![index];
            return ListTile(
              title: Text(user.name),
              subtitle: Text(user.email),
            );
          },
        ),
        onLoading: Center(child: CircularProgressIndicator()),
        onError: (error) => Center(child: Text(error ?? 'Unknown error')),
      ),
    );
  }
}

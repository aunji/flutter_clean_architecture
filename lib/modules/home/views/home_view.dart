import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Clean Code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display localized welcome message
            Text(
              'title'.tr,
              style: TextStyle(fontSize: width * 0.06),
            ),
            SizedBox(height: Get.height * 0.02),
            // Display localized hello message
            Text(
              'hello'.tr,
              style: TextStyle(fontSize: width * 0.04),
            ),
            SizedBox(height: height * 0.05),
            // Language selection buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Change to English
                    homeController.changeLanguage('en_US');
                  },
                  child: Text('English'),
                ),
                SizedBox(width: width * 0.05),
                ElevatedButton(
                  onPressed: () {
                    // Change to German
                    homeController.changeLanguage('de_DE');
                  },
                  child: Text('Deutsch'),
                ),
                SizedBox(width: width * 0.05),
                ElevatedButton(
                  onPressed: () {
                    // Change to Thai
                    homeController.changeLanguage('th_TH');
                  },
                  child: Text('ไทย'),
                ),
                SizedBox(width: width * 0.05),
                ElevatedButton(
                  onPressed: () {
                    // Change to Chinese
                    homeController.changeLanguage('cn_CN');
                  },
                  child: Text('中文'),
                ),
              ],
            ),
            SizedBox(height: height * 0.05), // 5% of screen height
            // Button to go to User Page
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/user');
              },
              child: Text('Go to User Page'),
              style: ElevatedButton.styleFrom(
                minimumSize:
                    Size(width * 0.5, height * 0.07), // 50% width and 7% height
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:get/get.dart';
import 'package:talikhatapro/Screens/Main_Botom_Nav_Screen.dart';

class SplashScreenController extends GetxController {
  SplashScreenController() {
    goToMainPage();
  }

  static Future<void> goToMainPage() async {
    Future.delayed(
      const Duration(seconds: 3),
          () => Get.offAll(const MainBottomNavScreen()),
    );
  }
}

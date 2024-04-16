import 'package:get/get.dart';
import 'package:talikhatapro/Controllers/Splash_Screen_Controller.dart';

class BindingController extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
  }

}
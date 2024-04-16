import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:lottie/lottie.dart';
import 'package:talikhatapro/Controllers/Splash_Screen_Controller.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: GetBuilder<SplashScreenController>(
        builder: (controller) {
          return Center(
            child: Builder(
              builder: (context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Welcome to ",
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: AppColors.green,
                      ),
                    ).animate().fade(delay: const Duration(milliseconds: 250)),
                    Image.asset(
                      "assets/logo.png",
                      height: MediaQuery.of(context).size.height * 0.2, // Adjust height based on screen height
                    ).animate().fadeIn(),
                    const Text(
                      AllStrings.appName,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ).animate().fade(delay: const Duration(milliseconds: 250)),
                    SizedBox(
                      height: 20,
                      child: Lottie.asset(
                        "assets/loading.json",
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}

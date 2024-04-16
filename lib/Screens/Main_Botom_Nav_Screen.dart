import 'package:flutter/material.dart';
import 'package:talikhatapro/Screens/Tally_Screen.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int selectedIndex = 0;

  final List<Widget> _screens = [
    const TallyScreen(),
    const TallyScreen(),
    const TallyScreen(),
    const TallyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          backgroundColor: AppColors.primaryColor,
          showUnselectedLabels: true,
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            if (mounted) {
              setState(() {});
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.book), label: AllStrings.bottomNavLabel1),
            BottomNavigationBarItem(
                icon: Icon(Icons.all_inbox), label: AllStrings.bottomNavLabel2),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet), label: AllStrings.bottomNavLabel3),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu), label: AllStrings.bottomNavLabel4),
          ],
        ),
      ),
    );
  }
}

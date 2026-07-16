import 'package:flutter/material.dart';
import 'package:services_app/features/home/persentation/screens/booing_screen.dart';
import 'package:services_app/features/home/persentation/screens/home_screen.dart';
import 'package:services_app/features/home/persentation/screens/profile_screen.dart';
import 'package:services_app/features/home/persentation/screens/services_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  // كل صفحة دلوقتي widget منفصل تمامًا
  final List<Widget> pages = const [
    HomeScreen(),
    ServicesScreen(),
    BookingScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // IndexedStack بيحافظ على حالة كل صفحة حتى لو مش ظاهرة
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF2170E4),
        unselectedItemColor: Color(0xFF424754),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service_outlined),
            activeIcon: Icon(Icons.home_repair_service),
            label: "Services",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            activeIcon: Icon(Icons.calendar_month),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

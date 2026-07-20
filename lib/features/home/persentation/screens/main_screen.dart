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

  final List<_NavItemData> navItems = const [
    _NavItemData(icon: Icons.home_outlined, activeIcon: Icons.home, label: "Home"),
    _NavItemData(
      icon: Icons.home_repair_service_outlined,
      activeIcon: Icons.home_repair_service,
      label: "Services",
    ),
    _NavItemData(
      icon: Icons.calendar_month_outlined,
      activeIcon: Icons.calendar_month,
      label: "Bookings",
    ),
    _NavItemData(icon: Icons.person_outline, activeIcon: Icons.person, label: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: _buildNavBar(),
    );
  }

  Widget _buildNavBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0B1C30).withOpacity(0.08),
            blurRadius: 24,
            offset: const Offset(0, -6),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(navItems.length, (index) {
              final isSelected = currentIndex == index;
              final item = navItems[index];

              return Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => setState(() => currentIndex = index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 220),
                    curve: Curves.easeOut,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? const Color(0xFF2170E4).withOpacity(0.10)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          isSelected ? item.activeIcon : item.icon,
                          size: 24,
                          color: isSelected
                              ? const Color(0xFF2170E4)
                              : const Color(0xFF9AA1AF),
                        ),
                        const SizedBox(height: 5),
                        AnimatedDefaultTextStyle(
                          duration: const Duration(milliseconds: 220),
                          style: TextStyle(
                            fontSize: 11.5,
                            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                            color: isSelected
                                ? const Color(0xFF2170E4)
                                : const Color(0xFF9AA1AF),
                          ),
                          child: Text(item.label),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class _NavItemData {
  final IconData icon;
  final IconData activeIcon;
  final String label;

  const _NavItemData({
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}
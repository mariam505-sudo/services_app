import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:services_app/core/constants/app_coloes.dart';
import 'package:services_app/features/home/persentation/screens/services_list_screen.dart';
import 'package:services_app/features/home/persentation/widgets/feedback_card.dart';
import 'package:services_app/features/home/persentation/widgets/servic_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 249, 255),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("assets/images/user1.jpg"),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Good Morning 👋",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "Mero",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            decoration: const BoxDecoration(
              color: AppColors.primaryTint,
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none_rounded,
                    color: AppColors.primaryDark,
                    size: 24,
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    width: 9,
                    height: 9,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0475C),
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.surface, width: 1.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ], //
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  width: 450,
                  height: 300,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      // Image
                      Image.asset(
                        "assets/images/unnamed.jpg",
                        fit: BoxFit.cover,
                      ),

                      // Gradient overlay — keeps the text readable on any image
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                              Color(0xCC0B1C30),
                            ],
                            stops: [0.0, 0.35, 1.0],
                          ),
                        ),
                      ),

                      // Content
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 24, 24, 26),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Small trust badge above the headline
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.4),
                                ),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.verified,
                                    size: 13,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "TRUSTED BY 10,000+ HOMES",
                                    style: TextStyle(
                                      fontSize: 10.5,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.6,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const Gap(14),

                            const Text(
                              "Find Trusted Home\nServices",
                              style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                height: 1.15,
                                letterSpacing: 0.2,
                              ),
                            ),

                            const Gap(10),

                            Text(
                              "Expert help for your home at your fingertips",
                              style: TextStyle(
                                fontSize: 14.5,
                                fontWeight: FontWeight.w400,
                                color: Colors.white.withOpacity(0.85),
                                height: 1.4,
                              ),
                            ),

                            const Gap(22),

                            Row(
                              children: [
                                // Primary CTA — gradient + shadow for depth
                                Expanded(
                                  child: Container(
                                    height: 46,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFF2A7BE0),
                                          Color(0xFF1955B0),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(
                                            0xFF1F69D7,
                                          ).withOpacity(0.45),
                                          blurRadius: 14,
                                          offset: const Offset(0, 6),
                                        ),
                                      ],
                                    ),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(25),
                                        onTap: () {},
                                        child: const Center(
                                          child: Text(
                                            "Book a Service",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                const Gap(12),

                                // Secondary CTA — frosted glass effect
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 8,
                                        sigmaY: 8,
                                      ),
                                      child: Container(
                                        height: 46,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.12),
                                          borderRadius: BorderRadius.circular(
                                            25,
                                          ),
                                          border: Border.all(
                                            color: Colors.white.withOpacity(
                                              0.6,
                                            ),
                                            width: 1.2,
                                          ),
                                        ),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(
                                              25,
                                            ),
                                            onTap: () {},
                                            child: const Center(
                                              child: Text(
                                                "Explore Services",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const Gap(24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Our Services",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),

              const Gap(16),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ServiceCard(
                        iconPath: "assets/images/icon.png",
                        title: "Cleaning",
                        subtitle: "Deep & regular",
                          onPressed: () {
                          // Navigate to the ServicesListScreen when the card is tapped
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  ServicesListScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                    const Gap(16),
                    Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ServiceCard(
                        iconPath: "assets/images/Plumbing.png",
                        title: "Plumbing",
                        subtitle: "Pipe & leaks",
                      
                      ),
                    ),
                    const Gap(16),
                    Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ServiceCard(
                        iconPath: "assets/images/Electrical.png",
                        title: "Electrical",
                        subtitle: "Wiring & repairs",
                      ),
                    ),
                    const Gap(16),
                    Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ServiceCard(
                        iconPath: "assets/images/Maintenance.png",
                        title: "Maintenance",
                        subtitle: "General care",
                      ),
                    ),
                  ],
                ),
              ),

              const Gap(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "What clients say",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  // Text(
                  //   "See All",
                  //   style: TextStyle(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.blue,
                  //   ),
                  // ),
                ],
              ),
              Gap(16),

              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    FeedbackCard(
                      image: "assets/images/user1.jpg",
                      name: "Sarah Jenkins",
                      rating: "⭐⭐⭐⭐⭐",
                      review:
                          "The cleaning service was absolutely exceptional. They handled every detail with such care.",
                    ),

                    Gap(16),

                    FeedbackCard(
                      image: "assets/images/user2.jpg",
                      name: "Michael Chen",
                      rating: "⭐⭐⭐⭐",
                      review:
                          "Very professional plumbing work.\nArrived exactly on time and fixed our\ncomplex leak in less than an hour. Brilliant\nservice!",
                    ),

                    Gap(16),

                    FeedbackCard(
                      image: "assets/images/user3.jpg",
                      name: "Emma Brown",
                      rating: "⭐⭐⭐",
                      review:
                          "Used the app for moving services last weekend. They were so careful with my piano. Stress-free experience from start to finish.",
                    ),
                  ],
                ),
              ),
              Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}

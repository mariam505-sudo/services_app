import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.location_on_outlined, color: Colors.black87),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.black87,
                  size: 28,
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              Stack(
                alignment: Alignment.center,
                children: [
                  // Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/images/unnamed.jpg",
                      width: 450,
                      height: 330,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Container(
                  //   width: 450,
                  //   height: 330,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(16),
                  //     color: Colors.black.withOpacity(0.35),
                  //   ),
                  // ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Find Trusted Home\nServices",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black54,
                              offset: Offset(2, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),

                      const Gap(12),

                      Text(
                        "Expert help for your home at your\nfingertips",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          shadows: [
                            Shadow(
                              color: Colors.black54,
                              offset: Offset(1, 1),
                              blurRadius: 3,
                            ),
                          ],
                        ),
                      ),

                      const Gap(30),

                      SizedBox(
                        width: 250,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1F69D7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: const Text(
                            "Book a Service",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      const Gap(16),

                      SizedBox(
                        width: 250,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff0B1C30).withOpacity(0.2),
                            elevation: 0,
                            side: const BorderSide(
                              color: Colors.white,
                              width: 1.5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: const Text(
                            "Explore Services",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
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
                      review:"Used the app for moving services last weekend. They were so careful with my piano. Stress-free experience from start to finish."
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

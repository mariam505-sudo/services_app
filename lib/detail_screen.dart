

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F6F9),
      body: Stack(
        children: [
          // Main scrollable content
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top image with back and heart buttons
                Stack(
                  children: [
                    Image.network(
                      'https://images.unsplash.com/photo-1584622650111-993a426fbf0a?w=800&q=80',
                      height: 230,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 16,
                      left: 16,
                      child: circleButton(Icons.arrow_back),
                    ),
                    Positioned(
                      top: 16,
                      right: 16,
                      child: circleButton(Icons.favorite_border),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title and price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Deep Bathroom Cleaning',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '\$45.00',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                'PER SERVICE',
                                style: TextStyle(fontSize: 11, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 6),

                      // Rating
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          SizedBox(width: 4),
                          Text('4.9', style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 4),
                          Text('(240+ reviews)', style: TextStyle(color: Colors.grey)),
                        ],
                      ),

                      SizedBox(height: 14),

                      // Tags row
                      Row(
                        children: [
                          tag(Icons.access_time, '2 Hours'),
                          SizedBox(width: 10),
                          tag(Icons.event_available, 'Available Today'),
                        ],
                      ),

                      SizedBox(height: 20),

                      // Description
                      Text('Description', style: sectionTitleStyle()),
                      SizedBox(height: 8),
                      Text(
                        'Our deep cleaning service includes thorough scrubbing of tiles, disinfection of all surfaces, mirror polishing, and drain cleaning using premium eco-friendly products. We ensure every corner of your bathroom sparkles like new.',
                        style: TextStyle(color: Colors.grey, height: 1.5),
                      ),

                      SizedBox(height: 20),

                      // What's included
                      Text("What's Included", style: sectionTitleStyle()),
                      SizedBox(height: 10),
                      checkItem('Tile Scrubbing'),
                      checkItem('Disinfection'),
                      checkItem('Mirror Polishing'),
                      checkItem('Drain Cleaning'),

                      SizedBox(height: 20),

                      // Reviews
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Customer Reviews', style: sectionTitleStyle()),
                          Text('View All', style: TextStyle(color: Colors.blue)),
                        ],
                      ),
                      SizedBox(height: 12),
                      reviewItem('SJ', 'Sarah Jenkins', 5, '2d ago',
                          'The team was incredibly professional. My bathroom has never looked this clean, even the hard water stains are gone!'),
                      reviewItem('MP', 'Mark Peterson', 4, '1w ago',
                          'Great service overall. They were 5 minutes late but more than made up for it with the quality of work.'),

                      SizedBox(height: 10),

                      // Related services
                      Text('Related Services', style: sectionTitleStyle()),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: relatedCard(
                              'https://images.unsplash.com/photo-1556911220-e15b29be8c8f?w=300&q=80',
                              'Kitchen Deep Clean',
                              '\$65.00',
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: relatedCard(
                              'https://images.unsplash.com/photo-1545173168-9f1947eebb7f?w=300&q=80',
                              'Laundry & Fold',
                              '\$35.00',
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

          // Bottom "Book Now" bar
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Colors.grey.shade300)),
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.calendar_month, color: Colors.white),
                  label: Text('Book Now', style: TextStyle(color: Colors.white, fontSize: 15)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Circle button for back/heart icons on the image
  Widget circleButton(IconData icon) {
    return CircleAvatar(
      backgroundColor: Colors.black45,
      radius: 17,
      child: Icon(icon, color: Colors.white, size: 16),
    );
  }

  // Small tag with icon (e.g. "2 Hours")
  Widget tag(IconData icon, String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: Color(0xFFEEF4FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: Colors.blue),
          SizedBox(width: 6),
          Text(label, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600, fontSize: 12)),
        ],
      ),
    );
  }

  TextStyle sectionTitleStyle() {
    return TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  }

  // Checklist row with green check circle
  Widget checkItem(String label) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 10,
            child: Icon(Icons.check, size: 12, color: Colors.white),
          ),
          SizedBox(width: 10),
          Text(label),
        ],
      ),
    );
  }

  // Single review block
  Widget reviewItem(String initials, String name, int stars, String time, String comment) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFFD9E4F5),
                radius: 17,
                child: Text(initials, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    children: List.generate(
                      5,
                      (i) => Icon(
                        Icons.star,
                        size: 11,
                        color: i < stars ? Colors.orange : Colors.grey.shade300,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(time, style: TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
          SizedBox(height: 6),
          Text(comment, style: TextStyle(color: Colors.grey, height: 1.4)),
        ],
      ),
    );
  }

  // Small related-service card
  Widget relatedCard(String image, String title, String price) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(image, height: 80, width: double.infinity, fit: BoxFit.cover),
        ),
        SizedBox(height: 6),
        Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.5)),
        Text(price, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 12.5)),
      ],
    );
  }
}
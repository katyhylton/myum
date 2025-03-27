import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Adding padding around the image for spacing
        Padding(
          padding: const EdgeInsets.all(16.0), // Padding added here
          child: Image.network(
            "https://news.miami.edu/_assets/images-stories/2025/03/fec-week-hero-790x527.jpg",
            width: 400,
          ),
        ),
        // Title text
        Text(
          "University of Miami",
          style: TextStyle(color: Colors.deepOrange, fontSize: 24),
        ),
        // Body text with padding
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Students learn best when they study what they love, and at the U your education is distinctly yours. We give students the freedom to cross disciplines and design their studies around their strengths, curiosities, passions, and goals.",
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}

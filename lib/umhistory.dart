import 'package:flutter/material.dart';

class UMHistory extends StatefulWidget {
  const UMHistory({super.key});

  @override
  State<UMHistory> createState() => _UMHistoryState();
}

class _UMHistoryState extends State<UMHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SingleChildScrollView( 
        child: Column(
          children: <Widget>[
            Padding(
          padding: const EdgeInsets.all(16.0),
            child: Image.network(
              "https://news.miami.edu/_assets/images-stories/2025/03/fec-week-hero-790x527.jpg",
              width: 400,
            ),),
            Text(
              "History of the U",
              style: TextStyle(color: Colors.deepOrange, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  sectionTitle("Founding and Early Years (1925-1940)"),
                  sectionText("Founded in 1925 during Florida’s land boom, the University of Miami was envisioned as a hub for research and education. The Great Depression slowed growth, but by the late 1930s, UM had expanded its programs and facilities, laying the groundwork for a thriving academic institution."),

                  sectionTitle("Post-War Expansion (1940-1960)"),
                  sectionText("After World War II, UM saw a surge in enrollment due to the G.I. Bill. The university expanded its campus, added new academic programs, and established a strong reputation in law, medicine, and marine science. By the 1950s, it became a leading research institution in the Southeast."),

                  sectionTitle("Civil Rights and Innovation (1960-1980)"),
                  sectionText("During the 1960s, UM integrated racially and advanced in research, including medical breakthroughs. The university also became a cultural hub, hosting influential figures in politics, science, and the arts. By the 1970s, UM had strengthened its national presence and enhanced student diversity."),

                  sectionTitle("Growth and Global Reach (1980-2000)"),
                  sectionText("UM gained recognition as a global institution, expanding research funding and partnerships. The School of Medicine and Rosenstiel School of Marine and Atmospheric Science made major advancements. The Hurricanes dominated college football, boosting school spirit and national recognition."),

                  sectionTitle("Modernization and Excellence (2000-2020)"),
                  sectionText("Entering the 21st century, UM focused on innovation, sustainability, and academic excellence. Investments in research, new facilities, and faculty helped elevate its global ranking. The university also became a leader in climate change studies and health sciences, reinforcing its impact worldwide."),

                  sectionTitle("Centennial and Beyond (2020-Present)"),
                  sectionText("As UM celebrates its centennial in 2025, it continues to evolve as a top-tier research university. With cutting-edge programs in sustainability, medicine, and technology, UM is shaping the future while honoring its legacy. Its commitment to innovation and diversity remains central to its mission."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 5),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepOrange),
      ),
    );
  }

  Widget sectionText(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 16),
    );
  }
}
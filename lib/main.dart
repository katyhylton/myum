import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'danceteams.dart';
import 'campuseats.dart';
import 'umhistory.dart';

void main() {
  runApp(const MyUM());
}

class MyUM extends StatelessWidget {
  const MyUM({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyUmApp(), // Use your stateful widget here
    );
  }
}

class MyUmApp extends StatefulWidget {
  const MyUmApp({super.key});

  @override
  State<MyUmApp> createState() => _MyUmAppState();
}

class _MyUmAppState extends State<MyUmApp> {
  int currentIndex = 0;
// "https://welcome.miami.edu/_assets/images/student-life/IEP-Shot-480x320.jpg"
      //"Students learn best when they study what they love, and at the U your education is distinctly yours."
      //"This is the title"
  
var img = [
  //Dance Team
  "https://scontent-mia3-2.xx.fbcdn.net/v/t39.30808-6/473080435_899271592374680_5286703979777791205_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=yIGeTdV3PesQ7kNvgFKVYT6&_nc_oc=AdkxQmuaOi3uRYh1sh50tZJdTvuVNY7Up9pYwCC_Gxcrq4TG8CCpn4BqAalcGCPyzNA&_nc_zt=23&_nc_ht=scontent-mia3-2.xx&_nc_gid=NUPhrrmtSKbPMKfSlZvi6A&oh=00_AYFnirCY7PehPkyJMsRwmPuk1uh8onbk74FRXrmuk7K0zw&oe=67EA04C8",
  "https://scontent-mia3-2.xx.fbcdn.net/v/t1.6435-9/57090184_2687224904627876_7036976083937263616_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=833d8c&_nc_ohc=5-4XirQbxPgQ7kNvgEX9SOs&_nc_oc=AdlI3AD4SIJgl_mhpveNfvemRHAeKFFIqSgUjsFr_a_76iqEjBq9s9xMO0gVAMfPqTc&_nc_zt=23&_nc_ht=scontent-mia3-2.xx&_nc_gid=0XNTkea-sYAmy4buKZuZbA&oh=00_AYEaZspBNrDuuzsM-zBulYqmkrYlMFz3sNSTVTGa-OSR0Q&oe=6808FB8F",
  "https://media-api.xogrp.com/images/93183a4c-1e27-460f-854a-f48a7ca288b5~cr_91.0.4443.3268-rs_540.420.fit",
  "https://news.miami.edu/_assets/images-stories/2023/11/coiso-competition-hero-revised-940x529.jpg",
  "https://scontent-mia3-1.xx.fbcdn.net/v/t39.30808-6/485147722_1191039396361483_6377057663648541621_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=127cfc&_nc_ohc=r1kzH6SgZpsQ7kNvgFchFDk&_nc_oc=AdnNeaPO-C5tlGFSxlA7oPohMn9o8VZGEqP2AlWUj8M2LbE1ak7LSnNCvuipgRDiWK4&_nc_zt=23&_nc_ht=scontent-mia3-1.xx&_nc_gid=cE88AIU-AlHfClSL45Dpgg&oh=00_AYF3N-RK_5nYkJbLarS6JqSZcbDQCppmVy5qAcIJMiD0XA&oe=67E791FB",
  "https://pbs.twimg.com/media/GFrdaGJW8AA0D_F.jpg",

  //Campus Eats
  "https://s3-media0.fl.yelpcdn.com/bphoto/mdI4bo6SttFBNEWC30pl2g/348s.jpg",
  "https://scc.studentaffairs.miami.edu/_assets/images/on-campus-dining/on-campus-housing-480x320.png",
  "https://news.miami.edu/_assets/images-stories/2021/03/new_dining_on_campus_940x529.jpg",
  "https://media-cdn.tripadvisor.com/media/photo-s/09/1e/ce/fe/einstein-bros-bagels.jpg",
  "https://news.miami.edu/_assets/images-stories/2024/08/new-campus-spaces-hero-940x529.jpg",
  "https://i0.wp.com/distractionmagazine.com/wp-content/uploads/2020/11/arch4.jpg?resize=900%2C599&ssl=1",
];

var titles = [
  // Dance Team
  "KAOS",
  "Miami Motion",
  "UJhoom",
  "Locked",
  "Hurricane Steppers",
  "Salsa Craze",

  //Campus Eats
  "The Rathskeller",
  "The Food Court",
  "Daybreak Cafe",
  "Einstein Bros",
  "Starbucks",
  "Archivist Cafe",
];

var summary = [
  // Dance Team
  "University of Miami's premier co-ed hip hop dance team. Dedicated to showcasing exceptional choreography and team spirit, we perform at university events including athletic competitions, fundraising initiatives, homecoming, and campus-wide celebrations. Annual showcase highlights our year-long artistic development.",
  "A University of Miami club sport dedicated to lyrical, jazz, and contemporary dance. Comprised of experienced dancers, our team is entirely student-led, with members creating original choreography and fostering a collaborative, creative environment. Annual spring showcase highlights our artistic journey and collective talent.",
  "University of Miami's premier Bollywood-fusion dance team, celebrates cultural diversity through innovative performance art. Blending multiple dance styles including Bollywood, Hip-hop, Bhangra, and Contemporary, our team transforms movement into storytelling. UJhoom represents more than dance—it embodies artistic expression, cultural exchange, and community.",
  "University of Miami's dedicated K-Pop dance team committed to celebrating Korean pop culture through dynamic performance. Open to all students regardless of dance experience, our team provides an inclusive platform for exploring K-Pop choreography and sharing our passion through campus events and digital media.",
  "Hurricane Steppers, a performance-driven organization at the University of Miami, celebrates and promotes the rich tradition of step dance. Beyond dynamic performances, our team is committed to community engagement, providing educational outreach to local students and creating opportunities for artistic expression and personal development.",
  "University of Miami's premier Cuban-style salsa dance program, specializing in Rueda de Casino. Our inclusive community welcomes dancers of all skill levels, offering accessible and engaging dance instruction. Weekly classes provide structured learning opportunities for beginners and advanced dancers, fostering cultural appreciation and social connection through movement.",

  //Campus Eats
  "The campus staple offers a casual dining experience with classic American fare, including burgers, wings, and sandwiches. Located by the lake, it’s a great spot to relax with friends, enjoy live music, or catch a game on TV.",  
  "Centrally located at the Shalala Student Center, this food court features a variety of fast-casual options, including popular chains like Panda Express, Subway, and Pollo Tropical. It’s a convenient choice for a quick bite between classes.",  
  "A cozy stop for breakfast and lunch, this café serves fresh pastries, smoothies, and specialty coffee. With grab-and-go options and a welcoming atmosphere, it’s perfect for an early morning boost or a light midday meal.",  
  "This go-to bagel shop is ideal for a hearty breakfast or lunch, offering a range of bagels, sandwiches, and coffee. With fresh ingredients and quick service, it’s a student favorite for fueling up before class.",  
  "Whether you need a morning coffee or an afternoon pick-me-up, this café offers a full menu of espresso drinks, teas, and pastries. Located conveniently on campus, it’s always bustling with students studying or catching up with friends.",  
  "A hidden gem on campus, this coffee shop serves high-quality brews, teas, and light snacks in a relaxed environment. It’s a quieter alternative for students looking to get work done or enjoy a peaceful break.",  

];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("MyUM"),
      backgroundColor: Colors.deepOrange,
      foregroundColor: Colors.white, // Set the text color to white
    ),

      body: Center(
        child: <Widget>[
          Dashboard(),
          ListView(
              children: <Widget> [
                DanceTeams(img[0],titles[0],summary[0]),
                DanceTeams(img[1],titles[1],summary[1]),
                DanceTeams(img[2],titles[2],summary[2]),
                DanceTeams(img[3],titles[3],summary[3]),
                DanceTeams(img[4],titles[4],summary[4]),
                DanceTeams(img[5],titles[5],summary[5]),
              ],
          ),
          ListView(
              children: <Widget> [
                CampusEats(img[6],titles[6],summary[6]),
                CampusEats(img[7],titles[7],summary[7]),
                CampusEats(img[8],titles[8],summary[8]),
                CampusEats(img[9],titles[9],summary[9]),
                CampusEats(img[10],titles[10],summary[10]),
                CampusEats(img[11],titles[11],summary[11]),
              ],),
          UMHistory(),
        ][currentIndex],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.dashboard),
            label: "Home"),
          NavigationDestination(
            icon: Icon(Icons.pages), 
            label: "Club Dance Teams"),
          NavigationDestination(
            icon: Icon(Icons.pages), 
            label: "On Campus Dining"),
          NavigationDestination(
            icon: Icon(Icons.pages), 
            label: "History of the U"),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:kera_chandler/components.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({Key? key}) : super(key: key);

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(
            size: 35.0,
            color: Colors.black,
          ),
        ),
        endDrawer: DrawersMobile(),
        body: ListView(
          children: [
            //Intro, First section
            CircleAvatar(
              radius: 117.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 110.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/image.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: SansBold("Hello I'm", 15.0),
                      ),
                      SansBold("Kera Chandler", 40.0),
                      SansBold("Flutter developer", 20.0),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 3.0,
                        children: [
                          Icon(Icons.email),
                          Icon(Icons.call),
                          Icon(Icons.location_pin),
                        ],
                      ),
                      SizedBox(width: 40.0),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 9.0,
                        children: [
                          Sans("kera.chandler@gmail.com", 15.0),
                          Sans("072 619 6266", 15.0),
                          Sans("Johannesburg, South Africa", 15.0),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 90.0),
            //About me, Second section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold("About me", 35.0),
                  Sans(
                      "Hello! I'm Kera Chandler specializing in Flutter development",
                      15.0),
                  Sans("I strive to be a tech unicorn!", 15.0),
                  Sans(
                      "State of the art security for Android, Ios, Web, Mac, Linux",
                      15.0),
                  SizedBox(height: 10.0),
                  Wrap(
                    spacing: 7.0,
                    runSpacing: 7.0,
                    children: [
                      tealContainer("Flutter"),
                      tealContainer("Firebase"),
                      tealContainer("Android Studio"),
                      tealContainer("Javascript"),
                      tealContainer("Visual Studio"),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 60.0),
            //What I do? Third section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold("What I do?", 35.0),
                AnimatedCard(
                    imagePath: "assets/webL.png",
                    text: "Web development",
                    width: 300.0),
                SizedBox(height: 35.0),
                AnimatedCard(
                    imagePath: "assets/app.png",
                    text: "App development",
                    fit: BoxFit.contain,
                    reverse: true,
                    width: 300.0),
                SizedBox(height: 35.0),
                AnimatedCard(
                    imagePath: "assets/firebase.png",
                    text: "Back-end development",
                    width: 300.0),
                SizedBox(height: 60.0),
                //Contact: Fourth section
                ContactFormMobile(),
                SizedBox(height: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

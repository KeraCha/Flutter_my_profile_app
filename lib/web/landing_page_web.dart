import 'package:flutter/material.dart';
import 'package:kera_chandler/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({Key? key}) : super(key: key);

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      //drawer is a hamburger menu on the left hand side that can draw out
      drawer: DrawersWeb(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        //setting theme for all icons. can overwrite for specific icon within another widget
        iconTheme: IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: TabsWebList(),
      ),
      body: ListView(
        children: [
          ////First page/section that will denote the first section of the page
          Container(
            //get rid of height bar. only want first section of page to show when open landing page.
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      child: SansBold("Hello I'm", 15),
                    ),
                    SizedBox(height: 15.0),
                    SansBold("Kera Chandler", 55.0),
                    Sans("Flutter developer", 30.0),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20.0),
                        Sans("kera.chandler@gmail.com", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 20.0),
                        Sans("072 619 6266", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 20.0),
                        Sans("Johannesburg, Honeydew Ridge", 15.0),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      //child: Image.asset("assets/AirBnb Pic-modified.png"),
                      radius: 140.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/image.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ////Second page/section
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/web.jpg",
                    filterQuality: FilterQuality.high,
                    height: widthDevice / 1.9),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 40.0),
                    SizedBox(height: 15.0),
                    Sans("Aspiring to be a tech unicorn!", 15.0),
                    Sans(
                        "I strive to ensure astounding performance with state of ",
                        15.0),
                    Sans(
                        "the art security for Android, Ios, Web, Mac, Linux and Windows",
                        15.0),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        tealContainer("Flutter"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("Firebase"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("Android Studio"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("Javascript"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer("Visual Studio"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          ////Third page/section
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What I do?", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //nice card to place other widgets into, was replaced with AnimatedCardWeb
                    AnimatedCard(
                      imagePath: "assets/webL.png",
                      text: "Web development",
                    ),
                    AnimatedCard(
                      imagePath: "assets/app.png",
                      text: "App development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCard(
                      imagePath: "assets/firebase.png",
                      text: "Back-end development",
                    ),
                  ],
                ),
              ],
            ),
          ),
          //if add a lot of cards can add a list view here and give it a horizontal scroll
          ////Fourth page/section
          SizedBox(height: 15.0),
          ContactFormWeb(),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/MyFlutterApp.dart';
import 'package:portfolio/main.dart';
import 'package:url_launcher/url_launcher_string.dart';

class home extends StatefulWidget {

  
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState(); 
}

class _homeState extends State<home> {
  bool isDarkMode = false;
  

  void SwtchDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {

    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Scaffold(
            
          
        appBar: AppBar(
          leadingWidth: largura,
          
          backgroundColor: Colors.transparent,
          actions: [
          
            IconButton(
                onPressed: () {
                  final state = context.findAncestorStateOfType<MyAppState>()!;

                  state.SwtchDarkMode();
                }, 
                icon: const Icon(
                  CupertinoIcons.moon_fill,
                  size: 24.0,
                ))
          ],
        ),
        body: SingleChildScrollView(
                      
            
            child: SingleChildScrollView(
              
              
                child: Column(children: 
                
             
                [
          Center(
            child: Column(children: [
               const SizedBox(height: 10),
               const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/photo.jpg'),
              ),
              Center(
                child: Column(
                  children:  [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Vitor Cicote ",
                      style: GoogleFonts.oswald( 
                         textStyle: Theme.of(context).textTheme.bodyLarge,
                        fontSize: 25,
                        fontStyle: FontStyle.normal
                        
                        
                      ),
                    ),
                    Text(
                      "Developer",
                     style: GoogleFonts.oswald(
                         textStyle: Theme.of(context).textTheme.bodyLarge,
                        fontSize: 20,
                        fontStyle: FontStyle.normal
                        
                        
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.flutter_dash),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(MyFlutterApp.js_square),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(MyFlutterApp.aws),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(MyFlutterApp.gitlab),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(MyFlutterApp.python),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(MyFlutterApp.database),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(MyFlutterApp.linux),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(MyFlutterApp.dharmachakra),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(MyFlutterApp.windows)
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(MyFlutterApp.html5),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(MyFlutterApp.bootstrap),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(MyFlutterApp.css3_alt),
                  ],
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 120,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      _launchURLGit();
                    },
                    icon: Icon(MyFlutterApp.github)),
                IconButton(
                    onPressed: () {
                      _launchURL();
                    },
                    icon: Icon(MyFlutterApp.linkedin)),
                IconButton(
                    onPressed: () {
                      launchURLInsta();
                    },
                    icon: Icon(MyFlutterApp.instagram)),
                IconButton(
                    onPressed: () {
                      launchURLTT();
                    },
                    icon: Icon(MyFlutterApp.twitter)),
                IconButton(
                    onPressed: () {
                      launchURSP();
                    },
                    icon: Icon(MyFlutterApp.spotify)),
              ],
            ),
          )
        ]))));
  }

  _launchURL() async {
    const url = 'https://www.linkedin.com/in/vitor-salazar-cicote-858927202/';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLGit() async {
    const url = 'https://github.com/vtrsc';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchURLInsta() async {
    const url = 'https://www.instagram.com/vtrcicote/';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchURLTT() async {
    const url = 'https://twitter.com/vtralazar';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchURSP() async {
    const url = 'https://open.spotify.com/';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

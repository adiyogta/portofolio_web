import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class aboutPage extends StatelessWidget {
  const aboutPage({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> urls = [
    "https://drive.google.com/uc?id=1gjg7VG2WMgaL3v595o4yfFiCXyR680cr",
    "https://www.instagram.com/yogtans",
    "https://dribbble.com/adiygt",
    "https://www.linkedin.com/in/adi-yogta",
  ];
    
    void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
    return Stack(
      children: <Widget>[
        if(MediaQuery.of(context).size.width > 700)
        Container(
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/profile.png',scale: 10
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width * 0.02,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hallo I'm Adi Yogta Putra",style: 
                      GoogleFonts.poppins(
                        fontSize: 25,
                        color: Colors.white,
                      ),),
                      Text('Junior Flutter Programming',style: 
                      GoogleFonts.montserrat(
                        fontSize: 35,
                        color: Colors.white70
                      ),),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.02,
                      ),
                      CustomButton(text: 'Download CV', onPressed: () {
                        _launchURL(urls[0]);
                      },
                      ),
                    ],
                  ),
                ]),
                SizedBox(height: MediaQuery.sizeOf(context).height *0.15,),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: (){
                          _launchURL(urls[1]);
                        }, 
                        icon: Image.asset('assets/images/instagram.png'),
                        iconSize: 70,
                        splashRadius: 40,
                        splashColor: Colors.amber,
                        ),
                        IconButton(
                        onPressed: (){
                          _launchURL(urls[3]);
                        }, 
                        icon: Image.asset('assets/images/linkedin.png'),
                        iconSize: 70,
                        splashRadius: 40,
                        splashColor: Colors.amber,
                        ),
                        IconButton(
                        onPressed: (){
                          _launchURL(urls[2]);
                        }, 
                        icon: Image.asset('assets/images/dribbble.png'),
                        splashRadius: 40,
                        splashColor: Colors.amber,
                        iconSize: 70,
                        ),
                    ],
                  )
            ],
          ),
        ),
        if(MediaQuery.of(context).size.width < 700)
        Container(
          height: MediaQuery.sizeOf(context).height,
          child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/profile.png',scale: 15),
                   SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.02,
                  ),
                  Text("Hallo I'm Adi Yogta Putra",style: 
                  GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                  ),),
                  Text('Junior Flutter Programming',style: 
                  GoogleFonts.montserrat(
                    fontSize: 25,
                    color: Colors.white70
                  ),),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.02,
                  ),
                  CustomButton(text: 'Download CV', onPressed: () {
                    _launchURL(urls[0]);
                  },),
                  SizedBox(height: MediaQuery.sizeOf(context).height *0.15,),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: (){
                          _launchURL(urls[1]);
                        }, 
                        icon: Image.asset('assets/images/instagram.png'),
                        iconSize: 50,
                        splashRadius: 30,
                        splashColor: Colors.amber,
                        ),
                        IconButton(
                        onPressed: (){
                          _launchURL(urls[3]);
                        }, 
                        icon: Image.asset('assets/images/linkedin.png'),
                        iconSize: 50,
                        splashRadius: 30,
                        splashColor: Colors.amber,
                        ),
                        IconButton(
                        onPressed: (){
                          _launchURL(urls[2]);
                        }, 
                        icon: Image.asset('assets/images/dribbble.png'),
                        splashRadius: 30,
                        splashColor: Colors.amber,
                        iconSize: 50,
                        ),
                    ],
                  )
                ],
              ),
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Set the button's width
      height: 50, // Set the button's height
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Rounded corners
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.blueAccent], // Gradient colors
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.5), // Shadow color
            spreadRadius: 1, // Shadow spread
            blurRadius: 3, // Shadow blur
            offset: Offset(0, 2), // Shadow offset
          ),
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white, // Text color
            fontSize: 18, // Text size
            fontWeight: FontWeight.bold, // Text weight
          ),
        ),
      ),
    );
  }
}
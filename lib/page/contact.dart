import 'package:flutter/material.dart';

class contactPage extends StatelessWidget {
  const contactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:<Widget> [
        if(MediaQuery.of(context).size.width > 700)
        Container(
          padding: EdgeInsets.only(top: 40,bottom: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Email Address :',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white
              ),),
              Text(' adiyogtap@gmail.com',
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue[400]
              ),),
              SizedBox(width: MediaQuery.sizeOf(context).width *0.12,),
              IconButton( 
                onPressed: () {
                  
                },
                icon: Image.asset('assets/images/instagram.png'),
                iconSize: 50,
                splashRadius: 25,
                splashColor: Colors.amber,
              ),
              IconButton( 
                onPressed: () {
                  
                },
                icon: Image.asset('assets/images/linkedin.png'),
                iconSize: 50,
                splashRadius: 25,
                splashColor: Colors.amber,
              ),
              IconButton( 
                onPressed: () {
                  
                },
                icon: Image.asset('assets/images/dribbble.png'),
                iconSize: 50,
                splashRadius: 25,
                splashColor: Colors.amber,
              )
            ],
          ),
        ),
        if(MediaQuery.of(context).size.width < 700)
        Container(
          padding: EdgeInsets.only(top: 40,bottom: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Email Address :',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),),
                  Text(' adiyogtap@gmail.com',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue[400]
                  ),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton( 
                        onPressed: () {
                          
                        },
                        icon: Image.asset('assets/images/instagram.png'),
                        iconSize: 50,
                        splashRadius: 25,
                        splashColor: Colors.amber,
                      ),
                  IconButton( 
                    onPressed: () {
                      
                    },
                    icon: Image.asset('assets/images/linkedin.png'),
                    iconSize: 50,
                    splashRadius: 25,
                    splashColor: Colors.amber,
                  ),
                  IconButton( 
                    onPressed: () {
                      
                    },
                    icon: Image.asset('assets/images/dribbble.png'),
                    iconSize: 50,
                    splashRadius: 25,
                    splashColor: Colors.amber,
                  )
                ],
              ),
                  
            ],
          ),
        ),
        
      ],
    );
  }
}
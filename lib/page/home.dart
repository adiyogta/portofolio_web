import 'package:flutter/material.dart';

import 'about.dart';
import 'contact.dart';
import 'portofolio.dart';

final Color customColor1 = Color(0xFF3d0066);
final Color customColor2 = Color(0xFF510087);
final Color customColor3 = Color(0xFF5c0099);
final Color customColor4 = Color(0xFFfdc500);
final Color customColor5 = Color(0xFFffd500);
final Color customColor6 = Color(0xFF03071e);

final PageController _pageController = PageController();
  int _currentPage = 0;


class home_page extends StatelessWidget {
  const home_page({super.key});
  

  @override
  Widget build(BuildContext context) {
    
    final TextStyle txtnav = TextStyle(color: Colors.white,fontSize: 18);
    final TextStyle txtnav1 = TextStyle(color: customColor5,fontSize: 20);
    return Scaffold(
      backgroundColor: customColor6,
      appBar: PreferredSize( preferredSize: Size.fromHeight(kToolbarHeight), // Set the preferred height of the AppBar
          child: Builder(
            builder: (context) {
              if (MediaQuery.of(context).size.width > 600) {
                return AppBar(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  title: TextButton(onPressed:() {
                    
                  },child: Text('ADI YOGTA',style: txtnav1,
                  )
                  ),
                 actions: [
                  TextButton(onPressed: () {
                    
                  }, child: Text('About',style: txtnav)
                  ),
                  TextButton(onPressed: () {
                     showModalBottomSheet(context: context, 
                     isScrollControlled: true,
                     useSafeArea: Paint.enableDithering,
                     shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                     ),
                     builder: (BuildContext context) {
                       return Container(
                        padding: EdgeInsets.only(top: 20,right: 60,left: 60,bottom: 25),
                        height: MediaQuery.sizeOf(context).height*0.9,
                        child: DataGrid());
                     },);
                  }, child: Text('Portofolio',style: txtnav)
                  ),      
                  SizedBox(width: 20),
                 ],
                );
              } else {
                 final List<String> menuItems = ['About', 'Portofolio'];
                return AppBar(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  title: Text('ADI YOGTA',style: txtnav1,),
                 actions: [ PopupMenuButton<String>(
                  color:customColor5,
                  itemBuilder: (BuildContext context) {
                    return menuItems.map((String item) {
                      return PopupMenuItem<String>(
                        value: item,
                        child: 
                        Text(item,style: txtnav,
                        ),
                        );
                        }).toList();
                        },
                        onSelected: (String selectedItem) {
                if(selectedItem=='About'){ print('2');}
                else if(selectedItem=='Portofolio'){
                  showModalBottomSheet(context: context, 
                     isScrollControlled: true,
                     useSafeArea: Paint.enableDithering,
                     shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                     ),
                     builder: (BuildContext context) {
                       return Container(
                        padding: EdgeInsets.only(top: 20,right: 60,left: 60,bottom: 25),
                        height: MediaQuery.sizeOf(context).height*0.9,
                        child: DataGrid());
                     },);
                }
              },
            ),
                 ],);
              }
            },
          ),),
        body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              aboutPage(),
              Container(
                decoration: BoxDecoration(color: customColor2),
                child: contactPage(),
                ),
              Container(
                decoration: BoxDecoration(color: customColor1),
                padding: EdgeInsets.only(top: 15,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Build By  ',
                    style: TextStyle(
                fontSize: 18,
                color: Colors.white
              ),),
                    Text('Adi Yogta Putra',
                    style: TextStyle(
                fontSize: 18,
                color: Colors.blue[400]
              ),),
                  ],
                ),
              )
            ],
          )
          )
      ),
    );
  }
}
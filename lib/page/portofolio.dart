import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../API/portoController.dart';
import '../API/portofolio.dart';

class DataGrid extends StatefulWidget {
  @override
  _DataGridState createState() => _DataGridState();
}

class _DataGridState extends State<DataGrid> {
  final DataController dataController = DataController();
  List<GetData> dataList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      List<GetData> fetchedData = await dataController.fetchData();
      setState(() {
        dataList = fetchedData;
      });
    } catch (e) {
      // Tangani jika terjadi kesalahan saat mengambil data
      print('Error fetching data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
     int crossAxisCount = screenWidth < 700 ? 1 : 2;
     double fontSize = screenWidth < 1000 ? 17 : 23;
     double childAspectRatio = screenWidth < 900 ? 14/11 : 14/10; 
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount, // Jumlah kolom
        mainAxisSpacing: 25.0, // Jarak antar baris
        crossAxisSpacing: 25.0, // Jarak antar kolom
        childAspectRatio: childAspectRatio
      ),
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        
         final String url = "${dataList[index].link}";

         void _launchURL() async {
         if (await canLaunch(url)) {
         await launch(url);
         } else {
          throw 'Could not launch $url';
         }
         }

        return Container(
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                dataList[index].image,
                scale: 1,
              ),
              Text( 
                ' '+dataList[index].nama,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                ),
              ),
              TextButton(
                onPressed: () {
                  _launchURL();
                },
                child: Text(
                 'view',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

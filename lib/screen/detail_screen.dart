import 'package:flutter/material.dart';
import 'package:windramayu/colors.dart';
import 'package:windramayu/screen/list_catagory_screen.dart';
import 'package:windramayu/screen/maps_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimary1,
      body: SafeArea(
          top: true,
          bottom: true,
          left: true,
          right: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 218,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      image: DecorationImage(
                          image: AssetImage("assets/tugumangga.jpeg"),
                          fit: BoxFit.fill,
                          alignment: Alignment.bottomCenter),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ListCatagoryScreen(),
                                    ),
                                  );
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios_new_outlined,
                                  size: 32,
                                ),
                              ),
                              Text(
                                "WINDRAMAYU",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              )
                            ],
                          ),
                          alignment: Alignment.topCenter,
                        ),
                        Align(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Text',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          MapScreen(),
                                    ),
                                  );
                                  },
                                  icon: Icon(
                                    Icons.map_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          alignment: Alignment.bottomLeft,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 24, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Detail Wisata",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.credit_card,
                          size: 32,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Gratis'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.date_range_outlined,
                          size: 32,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Senin - Minggu'),
                            Text('06:00 - 17:00')
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.map_sharp,
                          size: 32,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Dadap, Juntinyuat, Indramayu Regency, West Java',
                                  maxLines: 3,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Deskripsi Wisata",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
                        maxLines: 8,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

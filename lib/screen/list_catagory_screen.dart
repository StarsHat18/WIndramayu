import 'package:flutter/material.dart';
import 'package:windramayu/colors.dart';
import 'package:windramayu/screen/catagory_screen.dart';
import 'package:windramayu/screen/detail_screen.dart';
import 'package:windramayu/screen/home_screen.dart';
import 'package:windramayu/widgets/box_wisata.dart';
import 'package:windramayu/widgets/rounded_button.dart';

class ListCatagoryScreen extends StatefulWidget {
  ListCatagoryScreen({Key? key}) : super(key: key);

  @override
  State<ListCatagoryScreen> createState() => _ListCatagoryScreenState();
}

class _ListCatagoryScreenState extends State<ListCatagoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimary1,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CatagoryScreen(),
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
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 8,
                left: 20,
                right: 20,
                bottom: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundedButton(
                    text: "ALAM",
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CatagoryScreen(),
                          ));
                    },
                  ),
                  RoundedButton(
                    text: "Kebudayaan",
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ));
                    },
                  ),
                  RoundedButton(
                    text: "Buatan",
                    press: () {},
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  ),
                )
              },
              child: 
              BoxWisata(
                title: "Dadap",
                img: "assets/tugumangga.jpeg",
                h: 110,
                w: 320,
                fs: 20,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

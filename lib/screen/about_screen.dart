import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:windramayu/colors.dart';
import 'package:windramayu/screen/pesan_screen.dart';
import 'package:windramayu/widgets/rounded_button.dart';

class AboutScreen extends StatefulWidget {
  AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimary1,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "ABOUT",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 121,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/aboutL.png'),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'WIndramayu',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'by M. D. Alamsyah',
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 8),
            Text(
              'Jika ada kritik dan saran bisa hubungi :',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 8),
            Icon(
              Icons.camera_alt_outlined,
              color: CFalse,
              size: 32,
            ),
            SizedBox(height: 4),
            Text(
              '@dlam.01',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 8),
            Icon(
              Icons.email_outlined,
              color: CFalse,
              size: 32,
            ),
            SizedBox(height: 4),
            Text(
              'muhammad.dzuhri@students.utdi.ac.id',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 8),
            Text(
              'Atau',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            RoundedButton(text: 'Pesan',color: Colors.grey, press: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PesanScreen(),
                  ),
                );
            },)
          ],
        ),
      ),
    );
  }
}

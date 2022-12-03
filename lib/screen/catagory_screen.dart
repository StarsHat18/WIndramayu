import 'package:flutter/material.dart';
import 'package:windramayu/colors.dart';
import 'package:windramayu/screen/list_catagory_screen.dart';
import 'package:windramayu/widgets/box_kategori.dart';

class CatagoryScreen extends StatefulWidget {
  CatagoryScreen({Key? key}) : super(key: key);

  @override
  State<CatagoryScreen> createState() => _CatagoryScreenState();
}

class _CatagoryScreenState extends State<CatagoryScreen> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "KATEGORI",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
            GestureDetector(
              child: BoxKategori(
                kategori: "WISATA ALAM",
                desKategori:
                    "semua hasil cipta, rasa dan karsa manusia baik berupa adat istiadat, kerajinan tangan, kesenia, peninggalan sejarah berupa bangunan (Contoh monumen).",
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListCatagoryScreen(),
                  ),
                )
              },
            )
          ],
        ),
      ),
    );
  }
}

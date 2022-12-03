import 'package:flutter/material.dart';
import 'package:windramayu/colors.dart';
import 'package:windramayu/models/api/wisata_api.dart';
import 'package:windramayu/screen/model_view_model.dart';
import 'package:windramayu/widgets/box_wisata.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  bool _isLoading = true;
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();


}

class _MyHomePageState extends State<MyHomePage> {
  @override
  
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Provider.of<WisataViewModel>(context,listen: false).getWisata();
      setState(() {
        bool _isLoading = false;
      });
    });
    super.didChangeDependencies();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimary1,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Container(
                    height: 220,
                    decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(width: 5, color: CSeccond)),
                      image: DecorationImage(
                          image: AssetImage("assets/tugumangga.jpeg"),
                          fit: BoxFit.fill,
                          alignment: Alignment.bottomCenter),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 20,
                    child: RichText(
                      text: TextSpan(
                        text: "Selamat\nDatang",
                        style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wisata Alam',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //listbuilder
                            BoxWisata(
                                h: 100,
                                w: 100,
                                fs: 13,
                                title: 'wisata',
                                img: 'assets/tugumangga.jpeg'),
                            BoxWisata(
                                h: 100,
                                w: 100,
                                fs: 13,
                                title: 'wisata',
                                img: 'assets/tugumangga.jpeg'),
                            BoxWisata(
                                h: 100,
                                w: 100,
                                fs: 13,
                                title: 'wisata',
                                img: 'assets/tugumangga.jpeg'),
                            BoxWisata(
                                h: 100,
                                w: 100,
                                fs: 13,
                                title: 'wisata',
                                img: 'assets/tugumangga.jpeg'),
                            BoxWisata(
                                h: 100,
                                w: 100,
                                fs: 13,
                                title: 'wisata',
                                img: 'assets/tugumangga.jpeg'),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

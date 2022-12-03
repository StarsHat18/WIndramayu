import 'package:flutter/material.dart';

class BoxWisata extends StatelessWidget {
  final String title;
  final String img;
  final double h;
  final double w;
  final double fs;

  BoxWisata({
    Key? key,
    required this.title,
    required this.img,
    required this.h,
    required this.w,
    required this.fs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: w,
      height: h,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(children: [
        Align(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: fs,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          alignment: Alignment.center,
        )
      ]),
    );
  }
}

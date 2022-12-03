import 'package:flutter/material.dart';
import 'package:windramayu/colors.dart';

class BoxKategori extends StatelessWidget {
  final String kategori;
  final String desKategori;
  const BoxKategori({
    required this.kategori,
    required this.desKategori,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 144,
      decoration: BoxDecoration(
        color: CLight,
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
      ),
      child: Stack(
        children: [
          Align(
            child: Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                kategori,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            alignment: Alignment.topCenter,
          ),
          Align(
            child: Padding(
              padding: EdgeInsets.only(
                top: 16,
                right: 19,
                left: 19,
                bottom: 19,
              ),
              child: Text(
                desKategori,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 6,
                textAlign: TextAlign.justify,
              ),
            ),
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}

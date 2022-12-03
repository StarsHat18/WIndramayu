import 'package:flutter/material.dart';
import 'package:windramayu/models/api/wisata_api.dart';
import 'package:windramayu/models/ListWisata.dart';

class WisataViewModel with ChangeNotifier {
  List<ListWisata> _wisata = [];
  List<ListWisata> get wisatas => _wisata;

  Future<void> getWisata()async{
    final c= await WisataApi().getWisata(datawisata: 'datawisata');
    _wisata= c;
    notifyListeners();
  }
}
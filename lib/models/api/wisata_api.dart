import 'package:dio/dio.dart';
import 'package:windramayu/models/ListWisata.dart';

class WisataApi {
  // static Future<List<ModelWisata>> getWisata() async {    
  //   try {
  //     final response = await Dio().get(
  //         'https://windramayu-api-default-rtdb.asia-southeast1.firebasedatabase.app/');
  //     final wisataList = (response.data as List)
  //         .map((e) => ModelWisata(
  //             name: e['nama'],
  //             hari: e['hari'],
  //             jam: e['jam'],
  //             alamat: e['alamat'],
  //             tiket: e['tiket'],
  //             category: e['kategori'],
  //             about: e['about'],
  //             lat: e['Lat'],
  //             lng: e['lng'],
  //             ))
  //         .toList();
  //     return wisataList;
  //   } on Exception catch (_) {
  //     throw Exception("Failed fetch");
  //   }
  // }
//     final Dio _dio = Dio();
//     final String baseUrl =
//         'https://windramayu-api-default-rtdb.asia-southeast1.firebasedatabase.app/';
//     final String apiKey = 'AIzaSyCXzpgVt_M_rrLFquDfjnOa5hRLjkD3qLc';
//     try {
//       final response = await _dio.get('$baseUrl/$apiKey');
//       Wisata wisata = Wisata.fromJson(response.data);
//       return wisata;
//     } catch (error) {
//       throw Exception('Exception accoured: $error');
//     }
  Future<List<ListWisata>> getWisata({required String datawisata})async{
    final Response = await Dio().get('https://windramayu-api-default-rtdb.asia-southeast1.firebasedatabase.app/$datawisata.json');
    List<ListWisata> data =(Response.data['datawisata']as List).map((e) => ListWisata.fromJson(e)).toList();

    return data;
  }
}

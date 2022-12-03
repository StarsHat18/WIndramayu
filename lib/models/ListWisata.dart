class ListWisata {
  int? id;
  String? name;
  String? hari;
  String? jam;
  String? alamat;
  String? tiket;
  String? category;
  String? about;
  double? lat;
  double? lng;
  List<Imgs> img;

  ListWisata({
    this.id,
    this.name,
    this.hari,
    this.jam,
    this.alamat,
    this.tiket,
    this.category,
    this.about,
    this.lat,
    this.lng,
    required this.img,
  });
  ListWisata.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        hari = json['hari'],
        jam = json['jam'],
        alamat = json['alamat'],
        tiket = json['tiket'],
        category = json['kategori'],
        about = json['about'],
        lat = json['lat'],
        lng = json['lng'],
        img = json['img'] == null
            ? []
            : List<Imgs>.from(json['img'].map((x) => Imgs.fromJson(x)));

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "hari": hari,
        "jam": jam,
        "alamat": alamat,
        "tiket": tiket,
        "kategori": category,
        "about": about,
        "lat": lat,
        "lng": lng,
      };

  // factory ListWisata.fromJson(Map<String,dynamic> json) {
  //   return ListWisata(
  //       id = json['id'],
  //       name: json['name'] as String,
  //       hari: json['hari'] as String,
  //       jam: json['jam'] as String,
  //       alamat: json['alamat'] as String,
  //       tiket: json['tiket'] as String,
  //       category: json['kategori'] as String,
  //       about: json['about'] as String,
  //       lat: json['lat'] as double,
  //       lng: json['lng'] as double,
  //       // img: json['img'] != null
  //       //     ? List<Imgs>.from(json['img'].map((x) => Imgs.fromJson(x)))
  //       //     : []
  //       );
  // }
  // Map<String, dynamic> toJson()=>{
  //   "name":name,
  //   "hari":hari,
  //   "jam":jam,
  //   "alamat":alamat,
  //   "tiket":tiket,
  //   "kategori":category,
  //   "about":about,
  //   "lat":lat,
  //   "lng":lng,
  // };

}

class Imgs {
  String? urlimg;

  Imgs({this.urlimg});

  factory Imgs.fromJson(Map<String, dynamic> json) => Imgs(
        urlimg: json["img"] != null ? json["img"] : '',
      );

  Map<String, dynamic> toJson() => {
        "img": urlimg == null ? null : urlimg,
      };
}

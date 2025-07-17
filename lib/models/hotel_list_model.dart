class HotelModel {
  String? name;
  String? image;
  String? state;
  int? amountPerNight;

  HotelModel({
    this.name,
    this.image,
    this.state,
    this.amountPerNight,
  });

  HotelModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    state = json['state'];
    amountPerNight = json['amount_per_night'];
  }
}

class HotelList {
  late List<HotelModel> _hotels;

  List<HotelModel> get hotels => _hotels;

  HotelList({required List<HotelModel> hotels}) {
    _hotels = hotels;
  }

  HotelList.fromJson(List<dynamic> jsonList) {
    _hotels = jsonList.map((json) => HotelModel.fromJson(json)).toList();
}
}
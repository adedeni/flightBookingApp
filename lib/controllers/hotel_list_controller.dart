
import 'package:flightbookingapp/data/repository/hotel_list_repository.dart';
import 'package:flightbookingapp/models/hotel_list_model.dart';
import 'package:get/get.dart';

class HotelListController extends GetxController {
  final HotelListRepository hotelListRepository;
  HotelListController({required this.hotelListRepository});

  List<dynamic> _hotelList = [];
  List<dynamic> get hotelList => _hotelList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
  Future<void> getHotelList() async {
    Response response = await hotelListRepository.getHotelList();
    if (response.statusCode == 200) {
      
      //print(response.statusCode);
       _hotelList = [];
       _hotelList.addAll(HotelList.fromJson(response.body).hotels);
      print(_hotelList);
       _isLoaded = true;
       update();
    } else {}
  }
}

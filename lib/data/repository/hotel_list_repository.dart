import 'package:flightbookingapp/data/api/api_client.dart';
import 'package:flightbookingapp/utils/app_constant.dart';

import 'package:get/get.dart';

class HotelListRepository extends GetxService {
  final ApiClient apiClient;
  HotelListRepository( {required this.apiClient});
  Future<Response> getHotelList() async{
    return await apiClient.getData(AppContants.HOTEL_LIST_URI) ;
  }
}

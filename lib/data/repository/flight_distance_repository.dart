import 'package:flightbookingapp/data/api/api_client.dart';
import 'package:flightbookingapp/utils/app_constant.dart';

import 'package:get/get.dart';

class FlightDistanceRepository extends GetxService {
  final ApiClient apiClient;
  FlightDistanceRepository( {required this.apiClient});
  Future<Response> getFlightDistance() async{
    return await apiClient.getData(AppContants.FLIGHT_DISTANCE_URI) ;
  }
}

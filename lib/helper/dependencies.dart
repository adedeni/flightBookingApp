import 'package:flightbookingapp/controllers/flight_distance_controller.dart';
import 'package:flightbookingapp/controllers/hotel_list_controller.dart';
import 'package:flightbookingapp/controllers/tickets_list_controller.dart';
import 'package:flightbookingapp/data/api/api_client.dart';
import 'package:flightbookingapp/data/repository/flight_distance_repository.dart';
import 'package:flightbookingapp/data/repository/hotel_list_repository.dart';
import 'package:flightbookingapp/data/repository/ticket_list_repository.dart';
import 'package:flightbookingapp/utils/app_constant.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppContants.BASE_URL));
  //repository
  Get.lazyPut(() => FlightDistanceRepository(apiClient: Get.find()));
  Get.lazyPut(() => HotelListRepository(apiClient: Get.find()));
  Get.lazyPut(() => TicketListRepository(apiClient: Get.find()));
  
  //controllers
  Get.lazyPut(() => FlightDistanceController(flightDistanceRepository: Get.find()));
  Get.lazyPut(() => HotelListController(hotelListRepository: Get.find()));
  Get.lazyPut(() => TicketsListController(ticketListRepository: Get.find()));
  
}

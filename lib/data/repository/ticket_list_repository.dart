import 'package:flightbookingapp/data/api/api_client.dart';
import 'package:flightbookingapp/widgets/app_constant.dart';

import 'package:get/get.dart';

class TicketListRepository extends GetxService {
  final ApiClient apiClient;
  TicketListRepository( {required this.apiClient});
  Future<Response> getTicketList() async{
    return await apiClient.getData(AppContants.TICKET_LIST_URI) ;
  }
}

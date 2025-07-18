
//import 'dart:io';

//import 'package:flightbookingapp/data/repository/hotel_list_repository.dart';
import 'package:flightbookingapp/data/repository/ticket_list_repository.dart';
//import 'package:flightbookingapp/models/hotel_list_model.dart';
import 'package:flightbookingapp/models/tickets_list_model.dart';
import 'package:get/get.dart';

class TicketsListController extends GetxController {
  final TicketListRepository ticketListRepository;
  TicketsListController({required this.ticketListRepository});

  List<dynamic> _ticketList = [];
  List<dynamic> get ticketList => _ticketList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
  Future<void> getTicketList() async {
    //print(getTicketList);
   
    Response response = await ticketListRepository.getTicketList();
    if (response.statusCode == 200) {
     // print(response.statusCode);
    //   //print("i am here");
      _ticketList = [];
      _ticketList.addAll(TicketList.fromJson(response.body).tickets);
    //print(_ticketList);
       _isLoaded = true;
     update();
    } else {}
  }
}

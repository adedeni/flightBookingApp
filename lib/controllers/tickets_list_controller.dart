import 'dart:async';
import 'package:flightbookingapp/data/repository/ticket_list_repository.dart';
import 'package:flightbookingapp/models/tickets_list_model.dart';
import 'package:get/get.dart';

class TicketsListController extends GetxController {
  final TicketListRepository ticketListRepository;
  TicketsListController({required this.ticketListRepository});

  List<TicketModel> _ticketList = [];
  List<TicketModel> get ticketList => _ticketList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  late Timer _timer;
 Future<void> getTicketList() async {
    //print(getTicketList);
   
    Response response = await ticketListRepository.getTicketList();
    if (response.statusCode == 200) {
     // print(response.statusCode);
    //   //print("i am here");
      _ticketList = TicketList.fromJson(response.body).tickets;
    //print(_ticketList);
       _isLoaded = true;
      startAutoCycle();
      update();
     }
  }
   void startAutoCycle() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_ticketList.isNotEmpty) {
        _currentIndex = (_currentIndex + 1) % _ticketList.length;
        update();
      }
    });
  }

  TicketModel get currentTicket => _ticketList[_currentIndex];
  TicketModel get nextTicket =>
      _ticketList[(_currentIndex + 1) % _ticketList.length];

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }
  }
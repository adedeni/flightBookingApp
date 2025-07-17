import 'package:flightbookingapp/class/bottom_bar.dart';
import 'package:flightbookingapp/controllers/hotel_list_controller.dart';
import 'package:flightbookingapp/controllers/tickets_list_controller.dart';
import 'package:flightbookingapp/helper/dependencies.dart' as dependencies;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependencies.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    Get.find<HotelListController>().getHotelList();
    Get.find<TicketsListController>().getTicketList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: const BottomBar(),
    );
  }
}
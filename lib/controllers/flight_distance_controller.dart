import 'package:flightbookingapp/data/repository/flight_distance_repository.dart';
import 'package:flightbookingapp/models/flight_distance_model.dart';
import 'package:get/get.dart';

class FlightDistanceController extends GetxController {
  final FlightDistanceRepository flightDistanceRepository;
  FlightDistanceController({required this.flightDistanceRepository});

  FlightModel? _flightDistance;
  FlightModel? get flightDistance => _flightDistance;
   bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getFlightDistance() async {
    Response response = await flightDistanceRepository.getFlightDistance();
    if (response.statusCode == 200) {
      //print(response.statusCode);
      //_flightDistance = [];
      _flightDistance = FlightModel.fromJson(response.body);
      // print(_flightDistance);
      _isLoaded = true;
      update();
    } else {
      //print("Error fetching hotel list");
    }
  }
}


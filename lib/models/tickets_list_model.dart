class TicketModel {
  String? passengerNo;
  String? boardingState;
  String? departureDate;
  String? departureTime;
  String? destinationState;

  TicketModel({
    this.passengerNo,
    this.boardingState,
    this.departureDate,
    this.departureTime,
    this.destinationState,
  });

  TicketModel.fromJson(Map<String, dynamic> json) {
    passengerNo = json['passenger_no'];
    boardingState = json['boarding_state'];
    departureDate = json['departure_date'];
    departureTime = json['departure_time'];
    destinationState = json['destination_state'];
  }
}


class TicketList {
  late List<TicketModel> _tickets;

  List<TicketModel> get tickets => _tickets;

  TicketList({required List<TicketModel> tickets}) {
    _tickets = tickets;
  }

  TicketList.fromJson(List<dynamic> jsonList) {
    _tickets = jsonList.map((json) => TicketModel.fromJson(json)).toList();
  }
}

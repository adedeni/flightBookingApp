class TicketModel {
  final LocationInfo to;
  final String date;
  final LocationInfo from;
  final int number;
  final String eTickets;
  final String passenger;
  final String flyingTime;
  final String bookingCode;
  final String flightPrice;
  final String departureTime;
  final String passportNumber;

  TicketModel({
    required this.to,
    required this.date,
    required this.from,
    required this.number,
    required this.eTickets,
    required this.passenger,
    required this.flyingTime,
    required this.bookingCode,
    required this.flightPrice,
    required this.departureTime,
    required this.passportNumber,
  });

  factory TicketModel.fromJson(Map<String, dynamic> json) {
    return TicketModel(
      to: LocationInfo.fromJson(json['to']),
      date: json['date'],
      from: LocationInfo.fromJson(json['from']),
      number: json['number'],
      eTickets: json['e_tickets'],
      passenger: json['passenger'],
      flyingTime: json['flying_time'],
      bookingCode: json['booking_code'],
      flightPrice: json['flight_price'],
      departureTime: json['departure_time'],
      passportNumber: json['passport_number'],
    );
  }
}

class LocationInfo {
  final String code;
  final String name;

  LocationInfo({
    required this.code,
    required this.name,
  });

  factory LocationInfo.fromJson(Map<String, dynamic> json) {
    return LocationInfo(
      code: json['code'],
      name: json['name'],
    );
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

class TicketModel {
  LocationInfo? from;
  LocationInfo? to;
  String? flyingTime;
  String? date;
  String? departureTime;
  int? number;
  String? passenger;
  String? passportNumber;
  String? eTickets;
  String? bookingCode;
  String? flightPrice;

  TicketModel({
    this.from,
    this.to,
    this.flyingTime,
    this.date,
    this.departureTime,
    this.number,
    this.passenger,
    this.passportNumber,
    this.eTickets,
    this.bookingCode,
    this.flightPrice,
  });

  TicketModel.fromJson(Map<String, dynamic> json) {
    from = json['from'] != null ? LocationInfo.fromJson(json['from']) : null;
    to = json['to'] != null ? LocationInfo.fromJson(json['to']) : null;
    flyingTime = json['flying_time'];
    date = json['date'];
    departureTime = json['departure_time'];
    number = json['number'];
    passenger = json['passenger'];
    passportNumber = json['passport_number'];
    eTickets = json['e_tickets'];
    bookingCode = json['booking_code'];
    flightPrice = json['flight_price'];
  }

  Map<String, dynamic> toJson() => {
    if (from != null) 'from': from!.toJson(),
    if (to != null) 'to': to!.toJson(),
    'flying_time': flyingTime,
    'date': date,
    'departure_time': departureTime,
    'number': number,
    'passenger': passenger,
    'passport_number': passportNumber,
    'e_tickets': eTickets,
    'booking_code': bookingCode,
    'flight_price': flightPrice,
  };
}


class LocationInfo {
  String? code;
  String? name;

  LocationInfo({this.code, this.name});

  LocationInfo.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() => {
    'code': code,
    'name': name,
  };


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
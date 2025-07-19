class FlightModel {
  AirlineDistance? valueJets;
  AirlineDistance? airPeace;
  AirlineDistance? ufitFly;

  FlightModel({this.valueJets, this.airPeace, this.ufitFly});

  FlightModel.fromJson(Map<String, dynamic> json) {
    valueJets = json['ValueJets'] != null
        ? AirlineDistance.fromJson(json['ValueJets'])
        : null;
    airPeace = json['AirPeace'] != null
        ? AirlineDistance.fromJson(json['AirPeace'])
        : null;
    ufitFly = json['UfitFly'] != null
        ? AirlineDistance.fromJson(json['UfitFly'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (valueJets != null) {
      data['ValueJets'] = valueJets!.toJson();
    }
    if (airPeace != null) {
      data['AirPeace'] = airPeace!.toJson();
    }
    if (ufitFly != null) {
      data['UfitFly'] = ufitFly!.toJson();
    }
    return data;
  }
}

class AirlineDistance {
  int? distance;

  AirlineDistance({this.distance});

  AirlineDistance.fromJson(Map<String, dynamic> json) {
    distance = json['distance'];
  }

  Map<String, dynamic> toJson() {
    return {
      'distance': distance,
    };
  }
}

class Weather {
  final double? temp;
  final double? feelsLike;
  final double? low;
  final double? high;
  final String? description;
//by making Constructor we can now call different variables that we've declared up
  Weather({this.temp, this.feelsLike, this.low, this.high, this.description});
//factory will get and connect all the json related data conversion and interactions when required
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temp: json['main']['temp'].toDouble(),
      feelsLike: json['main']['feels_like'].toDouble(),
      low: json['main']['temp_min'].toDouble(),
      high: json['main']['temp_max'].toDouble(),
      description: json['weather'][0]['description'],
    );
  }
}

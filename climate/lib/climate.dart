
String selectLocation() {
  Random r = Random();
  return r.nextInt(locations.length);
}

String selectWeather() {
  Random r = Random();
  return r.nextInt(weathers.length);
}

String selectTemperature() {
  Random r = Random();
  num minTemperature = -89.2; // Earth's coldest temperature
  num maxTemperature = 56.7; // Earth's hotest temperature (San Carlos)
  return r.nextDouble(minTemperature, maxTemperature + 1)
}

Stream<Map<String, dynamic>> getRandomClimateInfo () async* {
  while (true) {
    var climateInfo = new Map();
    climateInfo['location'] = selectLocation();
    climateInfo['weather'] = selectWeather();
    climateInfo['temperature'] = selectTemperature();

    
    await Future.delayed(Duration(seconds:5));
    yield(climateInfo);
  }
}

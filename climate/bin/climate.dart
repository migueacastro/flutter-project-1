import 'package:climate/climate.dart' as climate;
import 'package:climate/climate.dart' as climate;
import 'package:climate/console.dart' as console;
import 'dart:math';



Stream <Map<dynamic, dynamic>>generateRandomClimateMaps() async* {
  var climateMap = new Map();
  while (true) {
    climateMap['temperature'] = climate.selectTemperature();
    climateMap['location'] = climate.locations[climate.selectLocation()];
    climateMap['weather'] = climate.weathers[climate.selectWeather()];
    yield climateMap;
    await Future.delayed(Duration(seconds: 15));

  }
}

void climateMapToString(Map<dynamic, dynamic> climateMap) {
  print('================================================');
  print('The weather'.padLeft(30));
  print('================================================');
  print('\n  Location: ${climateMap['location']}');
  print('  Weather: ${climateMap['weather']}');
  print('  Temperature: ${climateMap['temperature'].toStringAsFixed(2)}C | '
        '${climate.celciusToFahrenheit(climateMap['temperature']).toStringAsFixed(2)}F | '
        '${climate.celciusToKelvin(climateMap['temperature']).toStringAsFixed(2)}K');
  print('');
  print('================================================');
}


void main(List<String> arguments) async {
  console.clear();
  Stream<Map<dynamic, dynamic>> randomClimateMapStream = generateRandomClimateMaps();
  await for(var climateMap in randomClimateMapStream) {
    climateMapToString(climateMap);
    await Future.delayed(Duration(seconds: 10));
    console.clear();
    print('Loading...');
  }
}



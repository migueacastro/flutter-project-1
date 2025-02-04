import 'dart:math';



List<String> weathers = ["Clear", "Rainy", "Cloudy", "Sunny"];
List<String> locations = ["Los Sauces", "Azerbaiyán", "Maracaibo"];

int selectLocation() {
  Random r = Random();
  return r.nextInt(locations.length);
}

int selectWeather() {
  Random r = Random();
  return r.nextInt(weathers.length);
}

num selectTemperature() {
  Random r = Random();
  num minTemperature = -89.2; // Earth's coldest temperature
  num maxTemperature = 56.7; // Earth's hotest temperature (San Carlos)
  return minTemperature + (r.nextDouble() * (maxTemperature + 1 - minTemperature));
}

num celciusToFahrenheit(num grad) {
  return (grad * 9/5) + 32;
}

num celciusToKelvin(num grad) {
  return grad + 273;
}



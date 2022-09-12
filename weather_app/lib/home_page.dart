import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:jiffy/jiffy.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Position? position;
  dynamic lat;
  dynamic lon;

  Map<String, dynamic>? weatherMap;
  Map<String, dynamic>? forecastMap;

  _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    position = await Geolocator.getCurrentPosition();

    lat = position!.latitude;
    lon = position!.longitude;

    fetchWeather();

  }

  fetchWeather() async {
    String myApiKey = "e5f043662dc24e903eb78c6beb0472e9";
    String weatherApi =
        "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$myApiKey";
    String forecastApi =
        "https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lon&appid=$myApiKey";

    var weatherResponse = await http.get(Uri.parse(weatherApi));
    var forecastResponse = await http.get(Uri.parse(forecastApi));
    setState(() {
      weatherMap = Map<String, dynamic>.from(jsonDecode(weatherResponse.body));
      forecastMap =
          Map<String, dynamic>.from(jsonDecode(forecastResponse.body));
    });
  }

  @override
  void initState() {
    _determinePosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    dynamic celsius = ((weatherMap!["main"]["temp"]) - 273.15);
    return Scaffold(
            body: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                      flex: 7,
                      child: Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1,
                        ),
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Color.fromRGBO(34, 51, 94, 1),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              "${weatherMap!["name"]}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              Jiffy(DateTime.now()).format("MMM do yy, h:mm"),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.network(
                                weatherMap!["main"]["feels_like"] ==
                                        "clear sky"
                                    ? "https://cdn-icons-png.flaticon.com/128/1163/1163661.png"
                                    : weatherMap!["main"]["feels_like"] ==
                                            "rainy"
                                        ? "https://cdn-icons-png.flaticon.com/512/1789/1789249.png"
                                        : "https://cdn-icons-png.flaticon.com/512/1789/1789249.png",
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "${weatherMap!["weather"][0]["main"]}",
                              style: const TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "${celsius.toInt()}° C",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "Feels like ${weatherMap!["main"]["feels_like"]}°",
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Humidity : ${weatherMap!["main"]["humidity"]} Pressure :${weatherMap!["main"]["pressure"]}",
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "⛅ Sunrise ${Jiffy(DateTime.fromMillisecondsSinceEpoch(weatherMap!["sys"]["sunrise"] * 1000)).format("h:mm a")}  🌇 Sunset ${Jiffy(DateTime.fromMillisecondsSinceEpoch(weatherMap!["sys"]["sunset"] * 1000)).format("h:mm a")}",
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 2,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: forecastMap!.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromRGBO(34, 51, 94, 1),
                            ),
                            width: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Jiffy("${forecastMap!["list"][index]["dt_txt"]}")
                                      .format("EEE h:mm"),
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.network(
                                    forecastMap!["list"][index]["weather"][0]
                                                ["description"] ==
                                            "moderate rain"
                                        ? "https://cdn-icons-png.flaticon.com/512/4006/4006133.png"
                                        : forecastMap!["list"][index]
                                                        ["weather"][0]
                                                    ["description"] ==
                                                "light rain"
                                            ? "https://static.vecteezy.com/system/resources/previews/007/388/708/original/rain-with-sun-color-icon-sunny-and-rainy-weather-light-rain-drizzle-scattered-shower-cloud-sun-and-raindrops-weather-forecast-isolated-illustration-vector.jpg"
                                            : forecastMap!["list"][index]
                                                            ["weather"][0]
                                                        ["description"] ==
                                                    "heavy intensity rain"
                                                ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUcN8812Msz8ChZ8x5q35VaT7PE4e4sQWLLg&usqp=CAU"
                                                : "https://cdn2.iconfinder.com/data/icons/weather-414/24/sun_cloud-512.png",
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${forecastMap!["list"][index]["weather"][0]["description"]}",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          );
  }
}

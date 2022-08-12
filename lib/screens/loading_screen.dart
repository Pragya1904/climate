import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   getLocation();
  // }

  void getLocation() async {
  //  print("requesting access");
    LocationPermission permission = await Geolocator.requestPermission();
  //  print("access granted");
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.lowest);
   // print("got position");
    print(position);
   // GetAddressFromLatLong(position);
  //  print(position);
  }

  // Future<void> GetAddressFromLatLong(Position position) async {
  //   List<Placemark> placemark =
  //       await placemarkFromCoordinates(position.latitude, position.longitude);
  //   print(placemark);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
        onPressed: () {
          getLocation();
          print("object");
        },
        child: Text("hey")),
      ),
    );
  }
}

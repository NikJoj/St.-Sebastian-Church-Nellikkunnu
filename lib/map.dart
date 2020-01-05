import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(10.5166318, 76.238769);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  // Marker m = Marker(markerId: MarkerId('1'), position:LatLng(10.511613, 76.238848));
  

  List<Marker> allMarkers = []; 

  @override
  void initState(){
    super.initState();
    allMarkers.add(Marker(
      markerId: MarkerId('St. Sebastian Church, Nellikunnu'),
      draggable: false,
      onTap: () {
        print("St. Sebastian Church, Nellikunnu");
      },
      position: LatLng(10.5166318, 76.238769) 
      ));
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 15.0,
          ),
          markers: Set.from(allMarkers),
        ),
      ),
    );
  }
}
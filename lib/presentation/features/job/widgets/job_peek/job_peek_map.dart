import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class JobPeekMap extends StatefulWidget {
  const JobPeekMap({super.key});

  @override
  State<JobPeekMap> createState() => _JobPeekMapState();
}

class _JobPeekMapState extends State<JobPeekMap> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 22,
  );

  @override
  void initState() {
    super.initState();
    _goToTheLake();
  }

  Future<void> _goToTheLake() async {
    final controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: _controller.complete,
    );
  }
}

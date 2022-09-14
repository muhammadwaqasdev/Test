import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class ChildTrackingViewModel extends ReactiveViewModel {
  final initialCameraPosition =
      CameraPosition(target: LatLng(24.939725, 67.023667), zoom: 11.5);
  GoogleMapController? mapController;
  TextEditingController originLocation = TextEditingController();
  TextEditingController destinationLocation = TextEditingController();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [];
}

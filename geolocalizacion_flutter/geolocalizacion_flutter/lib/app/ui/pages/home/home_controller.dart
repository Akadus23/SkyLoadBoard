
import 'dart:async';
import 'dart:ffi';

import 'package:flutter/widgets.dart' show ChangeNotifier ;
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class HomeController extends ChangeNotifier{
  final Map<MarkerId,Marker> _markers = {};

  Set<Marker> get markers => _markers.values.toSet();
  final _markersController = StreamController<String>.broadcast();
  Stream<String> get onMarkerTap => _markersController.stream;

  Position? _initialPosition;
  CameraPosition get initialCameraPosition => CameraPosition(target: LatLng(
                  _initialPosition!.latitude,
                  _initialPosition!.longitude,

                  ),
                  zoom: 15

                  );
  

  bool _loading = true;
  bool get loading => _loading;

  late bool _gpsEnabled;
  bool get gpsEnabled => _gpsEnabled;

  StreamSubscription? _gpsSubscription, _positionSubscription;

  HomeController(){
    _init();
  }

Future<void> _init()async{

_gpsEnabled = await Geolocator.isLocationServiceEnabled();

  _loading = false;
  _gpsSubscription= Geolocator.getServiceStatusStream().listen(
    (status) async{
      _gpsEnabled = status == ServiceStatus.enabled;
      if (_gpsEnabled){
        _initLocationUpdates();

      }
     
      
      
     },
    );
   _initLocationUpdates();
  
}

Future<void> _initLocationUpdates() async{
  bool initialized = false;
  await _positionSubscription?.cancel();
   _positionSubscription = Geolocator.getPositionStream().listen(
    (position) {
      if(!initialized){
        _setInitialPosition(position);
        initialized = true;
        notifyListeners();
      }
      
    },
    onError: (e){
      if (e is LocationServiceDisabledException){
        _gpsEnabled = false;
        notifyListeners();
      }

    }
  );
  

}

void _setInitialPosition(Position position ){
  if (_gpsEnabled && _initialPosition == null){
    //_initialPosition = await Geolocator.getLastKnownPosition();
    _initialPosition = position;
  }

}

Future<void> turnOnGPS() => Geolocator.openLocationSettings();


  void onTap(LatLng position){
    final id = _markers.length.toString();
    final markerId = MarkerId(id);
    final marker = Marker(
      markerId: markerId,
      position: position,
       draggable: true,
      onTap: (){
        _markersController.sink.add(id);
      },
     
       );

  _markers[markerId] = marker;
  notifyListeners();

  }

  @override
  void dispose(){
    _positionSubscription?.cancel();
    _gpsSubscription?.cancel();
    _markersController.close();
    super.dispose();
  }
}
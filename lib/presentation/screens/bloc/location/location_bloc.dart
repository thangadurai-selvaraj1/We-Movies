import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationInitial()) {
    on<LocationRequestedEvent>(getCurrentAddress);
  }

  void getCurrentAddress(LocationRequestedEvent event, Emitter emit) async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      emit(
        LocationFailureState(
          message: 'Location services are disabled.',
        ),
      );
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return emit(
          LocationFailureState(
            message: 'Location permissions are denied',
          ),
        );
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return emit(
        LocationFailureState(
          message:
              'Location permissions are permanently denied, we cannot request permissions.',
        ),
      );
    }

    final location = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
    );
    final placeMarks = await placemarkFromCoordinates(
      location.latitude,
      location.longitude,
    );

    return emit(
      LocationSuccessState(
        address: placeMarks,
      ),
    );
  }
}

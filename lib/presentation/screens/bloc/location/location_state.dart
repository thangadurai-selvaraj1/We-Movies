part of 'location_bloc.dart';

@immutable
sealed class LocationState {}

final class LocationInitial extends LocationState {}

final class LocationSuccessState extends LocationState {
  final List<Placemark> address;
  LocationSuccessState({required this.address});
}

final class LocationFailureState extends LocationState {
  final String message;
  LocationFailureState({required this.message});
}

part of 'location_bloc.dart';

@immutable
sealed class LocationEvent {}

final class LocationRequestedEvent extends LocationEvent {}
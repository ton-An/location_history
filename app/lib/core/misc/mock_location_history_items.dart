import 'package:location_history/features/map/domain/models/activity.dart';
import 'package:location_history/features/map/domain/models/address.dart';
import 'package:location_history/features/map/domain/models/coordinate.dart';
import 'package:location_history/features/map/domain/models/location_history_item.dart';
import 'package:location_history/features/map/domain/models/place.dart';

List<LocationHistoryItem> mockLocationHistoryItems = [
  Place(
    id: '1',
    startTime: DateTime.now().subtract(const Duration(hours: 8)),
    endTime: DateTime.now().subtract(const Duration(hours: 6)),
    name: 'Central Park',
    type: PlaceType.park,
    coordinate: const Coordinate(latitude: 40.785091, longitude: -73.968285),
    address: const Address(
      street: '59th St & 5th Ave',
      city: 'New York',
      postalCode: '10019',
      state: 'NY',
      country: 'USA',
    ),
  ),
  Activity(
    id: '2',
    startTime: DateTime.now().subtract(const Duration(hours: 6)),
    endTime: DateTime.now().subtract(const Duration(hours: 5)),
    type: ActivityType.walking,
    startCoordinate: const Coordinate(
      latitude: 40.785091,
      longitude: -73.968285,
    ),
    endCoordinate: const Coordinate(latitude: 40.779437, longitude: -73.963244),
    distance: 1.5,
  ),
  Place(
    id: '2',
    startTime: DateTime.now().subtract(const Duration(days: 2, hours: 10)),
    endTime: DateTime.now().subtract(const Duration(days: 2, hours: 8)),
    name: 'The Metropolitan Museum of Art',
    type: PlaceType.museum,
    coordinate: const Coordinate(latitude: 40.779437, longitude: -73.963244),
    address: const Address(
      street: '1000 5th Ave',
      city: 'New York',
      postalCode: '10028',
      state: 'NY',
      country: 'USA',
    ),
  ),
  Activity(
    id: '3',
    startTime: DateTime.now().subtract(const Duration(days: 2, hours: 8)),
    endTime: DateTime.now().subtract(const Duration(days: 2, hours: 7)),
    type: ActivityType.walking,
    startCoordinate: const Coordinate(
      latitude: 40.785091,
      longitude: -73.968285,
    ),
    endCoordinate: const Coordinate(latitude: 40.779437, longitude: -73.963244),
    distance: 1.5,
  ),
  Place(
    id: '4',
    startTime: DateTime.now().subtract(const Duration(days: 4, hours: 12)),
    endTime: DateTime.now().subtract(const Duration(days: 4, hours: 10)),
    name: 'Times Square',
    type: PlaceType.other,
    coordinate: const Coordinate(latitude: 40.7580, longitude: -73.9855),
    address: const Address(
      street: 'Broadway & 7th Ave',
      city: 'New York',
      postalCode: '10036',
      state: 'NY',
      country: 'USA',
    ),
  ),
  Activity(
    id: '5',
    startTime: DateTime.now().subtract(const Duration(days: 4, hours: 10)),
    endTime: DateTime.now().subtract(const Duration(days: 4, hours: 9)),
    type: ActivityType.walking,
    startCoordinate: const Coordinate(latitude: 40.7580, longitude: -73.9855),
    endCoordinate: const Coordinate(latitude: 40.785091, longitude: -73.968285),
    distance: 2.0,
  ),
  Place(
    id: '6',
    startTime: DateTime.now().subtract(const Duration(days: 6, hours: 14)),
    endTime: DateTime.now().subtract(const Duration(days: 6, hours: 12)),
    name: 'Statue of Liberty',
    type: PlaceType.other,
    coordinate: const Coordinate(latitude: 40.6892, longitude: -74.0445),
    address: const Address(
      street: 'Liberty Island',
      city: 'New York',
      postalCode: '10004',
      state: 'NY',
      country: 'USA',
    ),
  ),
  Activity(
    id: '7',
    startTime: DateTime.now().subtract(const Duration(days: 6, hours: 12)),
    endTime: DateTime.now().subtract(const Duration(days: 6, hours: 11)),
    type: ActivityType.walking,
    startCoordinate: const Coordinate(latitude: 40.6892, longitude: -74.0445),
    endCoordinate: const Coordinate(latitude: 40.7580, longitude: -73.9855),
    distance: 3.0,
  ),
  Place(
    id: '8',
    startTime: DateTime.now().subtract(const Duration(days: 8, hours: 16)),
    endTime: DateTime.now().subtract(const Duration(days: 8, hours: 14)),
    name: 'Brooklyn Bridge',
    type: PlaceType.other,
    coordinate: const Coordinate(latitude: 40.7061, longitude: -73.9969),
    address: const Address(
      street: 'Brooklyn Bridge',
      city: 'New York',
      postalCode: '10038',
      state: 'NY',
      country: 'USA',
    ),
  ),
  Activity(
    id: '9',
    startTime: DateTime.now().subtract(const Duration(days: 8, hours: 14)),
    endTime: DateTime.now().subtract(const Duration(days: 8, hours: 13)),
    type: ActivityType.walking,
    startCoordinate: const Coordinate(latitude: 40.7061, longitude: -73.9969),
    endCoordinate: const Coordinate(latitude: 40.6892, longitude: -74.0445),
    distance: 2.5,
  ),
  Place(
    id: '10',
    startTime: DateTime.now().subtract(const Duration(days: 10, hours: 18)),
    endTime: DateTime.now().subtract(const Duration(days: 10, hours: 16)),
    name: 'Empire State Building',
    type: PlaceType.other,
    coordinate: const Coordinate(latitude: 40.748817, longitude: -73.985428),
    address: const Address(
      street: '350 5th Ave',
      city: 'New York',
      postalCode: '10118',
      state: 'NY',
      country: 'USA',
    ),
  ),
  Activity(
    id: '11',
    startTime: DateTime.now().subtract(const Duration(days: 10, hours: 16)),
    endTime: DateTime.now().subtract(const Duration(days: 10, hours: 15)),
    type: ActivityType.walking,
    startCoordinate: const Coordinate(
      latitude: 40.748817,
      longitude: -73.985428,
    ),
    endCoordinate: const Coordinate(latitude: 40.7061, longitude: -73.9969),
    distance: 2.0,
  ),
  Place(
    id: '12',
    startTime: DateTime.now().subtract(const Duration(days: 12, hours: 20)),
    endTime: DateTime.now().subtract(const Duration(days: 12, hours: 18)),
    name: 'Chrysler Building',
    type: PlaceType.other,
    coordinate: const Coordinate(latitude: 40.7516, longitude: -73.9755),
    address: const Address(
      street: '405 Lexington Ave',
      city: 'New York',
      postalCode: '10174',
      state: 'NY',
      country: 'USA',
    ),
  ),
];

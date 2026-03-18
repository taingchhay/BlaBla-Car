import 'package:blabla/main_common.dart';
import 'package:blabla/ui/states/ride_preference_state.dart';
import 'package:provider/provider.dart';
import 'data/repositories/location/location_repository.dart';
import 'data/repositories/ride/ride_repository.dart';
import 'data/repositories/ride_preference/ride_preference_repository.dart';
import 'data/repositories/location/location_repository_mock.dart';
import 'data/repositories/ride/ride_repository_mock.dart';
import 'data/repositories/ride_preference/ride_preference_repository_mock.dart';

List<InheritedProvider> get devProviders {
  final ridePreferenceRepository = RidePreferenceRepositoryMock();
  return [
    // 1 - Inject the location repository
    Provider<LocationRepository>(create: (_) => LocationRepositoryMock()),

    // 2 - Inject the ride repository
    Provider<RideRepository>(create: (_) => RideRepositoryMock()),

    // 3 - Inject the ride preference repository
    Provider<RidePreferenceRepository>(
      create: (_) => ridePreferenceRepository),

    // Inject ride pref state
    ChangeNotifierProvider <RidePreferenceState>(
      create: (_) => RidePreferenceState(ridePreferenceRepository)),
  ];
}

void main() {
  mainCommon(devProviders);
}
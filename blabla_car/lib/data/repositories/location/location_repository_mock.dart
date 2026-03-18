import 'package:blabla/data/repositories/location/location_repository.dart';
import 'package:blabla/model/ride/locations.dart';

class LocationRepositoryMock implements LocationRepository {
  @override
  Future<List<Location>> getLocations() async {
    return [
      Location(name: "London", country: Country.uk),
      Location(name: "Manchester", country: Country.uk),
    ];
  }
}

import 'package:blabla/data/dummy_data.dart';
import 'package:blabla/data/repositories/ride/ride_repository.dart';
import 'package:blabla/model/ride/ride.dart';

class RideRepositoryMock implements RideRepository {
  @override
  Future<List<Ride>> getRide() async {
    return [
      Ride(
        departureLocation: fakeLocations[0],
        departureDate: DateTime.now().add(Duration(hours: 3)),
        arrivalLocation: fakeLocations[19], 
        arrivalDateTime: DateTime.now().add(Duration(hours: 8)),
        driver: fakeUsers[0],
        availableSeats: 2,
        pricePerSeat: 25.0,
      ),
    ];
  }
}

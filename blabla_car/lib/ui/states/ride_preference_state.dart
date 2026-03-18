import 'package:blabla/data/repositories/ride_preference/ride_preference_repository.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';
import 'package:flutter/material.dart';

class RidePreferenceState extends ChangeNotifier {
  final RidePreferenceRepository _repository;
  RidePreference? currentRidePreference;
  List<RidePreference> history = [];

  RidePreferenceState(this._repository) {
    _loadHistory();
  }

  Future<void> _loadHistory() async {
    history = await _repository.getHistory();
    notifyListeners();
  }

  void selectPreference(RidePreference preference) {
    if (preference != currentRidePreference){
      currentRidePreference = preference;
      history.add(preference);
      notifyListeners();
    }
  }
}
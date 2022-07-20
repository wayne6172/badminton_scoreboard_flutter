import 'package:flutter/foundation.dart';

class PlayRule extends ChangeNotifier {
  PlayNumber? _playNumber = PlayNumber.single;
  List<PlayerInfo> team1 = [];
  List<PlayerInfo> team2 = [];
  int victoryScore = 21;
  bool isEnableDeuce = true;
  int deuceVictoryScore = 30;
  int matchPoint = 1;

  PlayNumber? get playNumber => _playNumber;
  set playNumber(PlayNumber? playNumber) {
    _playNumber = playNumber;
    notifyListeners();
  }

  // int get finalVictoryScore => _deuceVictoryScore;
  // set finalVictoryScore(int deuceVictoryScore) {
  //   if (victoryScore >= deuceVictoryScore) {
  //     throw NullThrownError();
  //   }

  //   _deuceVictoryScore = deuceVictoryScore;
  // }
}

enum PlayNumber { single, pair }

class PlayerInfo {}

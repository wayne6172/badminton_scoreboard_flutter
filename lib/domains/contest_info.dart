import 'package:badminton_scoreboard_flutter/domains/contestant_info.dart';

class ContestInfo {
  final String contestName;
  final ContestantInfo leftTeamLeftConstant;
  final ContestantInfo leftTeamRightConstant;
  final ContestantInfo rightTeamConstant1;
  final ContestantInfo rightTeamConstant2;
  final int endScore;
  final Duece duece;
  final int matchPoint;

  ContestInfo({
    required this.contestName,
    required this.leftTeamLeftConstant,
    required this.leftTeamRightConstant,
    required this.rightTeamConstant1,
    required this.rightTeamConstant2,
    required this.endScore,
    required this.duece,
    required this.matchPoint,
  })
}

class Duece {
  final bool enable;
  final int endScore;

  Duece({required this.enable, required this.endScore});
}

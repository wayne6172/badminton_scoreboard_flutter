import 'package:badminton_scoreboard_flutter/playing_rules_setting/play_number_setting.dart';
import 'package:badminton_scoreboard_flutter/playing_rules_setting/play_rule.dart';
import 'package:badminton_scoreboard_flutter/playing_rules_setting/player-setting.dart';
import 'package:badminton_scoreboard_flutter/playing_rules_setting/victory_score_setting.dart';
import 'package:flutter/material.dart';

import 'deuce_setting.dart';
import 'match_point_setting.dart';

class PlayRulesSetting extends StatefulWidget {
  static const String routeName = '/playing_rules_setting';

  const PlayRulesSetting({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PlayRulesSettingState();
}

class PlayRulesSettingState extends State<PlayRulesSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('比賽規則'),
      ),
      body: Container(
        child: Column(
          children: const [
            PlayNumberSetting(),
            PlayerSetting(),
            VictoryScoreSetting(),
            DeuceSetting(),
            MatchPointSetting(),
          ],
        ),
      ),
    );
  }
}

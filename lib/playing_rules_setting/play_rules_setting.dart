import 'package:badminton_scoreboard_flutter/badminton_score_board/badminton_scoreboard.dart';
import 'package:flutter/material.dart';

class PlayRulesSetting extends StatelessWidget {
  static const String routeName = '/playing_rules_setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Play Rules Setting'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('開始比賽！'),
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(BadmintonScoreboard.routeName);
          },
        ),
      ),
    );
  }
}

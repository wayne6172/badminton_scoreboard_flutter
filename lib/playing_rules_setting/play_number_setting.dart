import 'package:badminton_scoreboard_flutter/playing_rules_setting/play_rule.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlayNumberSetting extends StatefulWidget {
  const PlayNumberSetting({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PlayNumberSettingState();
}

class PlayNumberSettingState extends State<PlayNumberSetting> {
  @override
  Widget build(BuildContext context) {
    var playRule = Provider.of<PlayRule>(context);

    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const Text('人數'),
          Center(
            child: Row(
              children: [
                Radio<PlayNumber>(
                  value: PlayNumber.single,
                  groupValue: playRule.playNumber,
                  onChanged: (PlayNumber? value) {
                    playRule.playNumber = value;
                  },
                ),
                const Text('單打'),
                Radio<PlayNumber>(
                  value: PlayNumber.pair,
                  groupValue: playRule.playNumber,
                  onChanged: (PlayNumber? value) {
                    playRule.playNumber = value;
                  },
                ),
                const Text('雙打'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

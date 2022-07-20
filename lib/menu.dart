import 'package:badminton_scoreboard_flutter/playing_rules_setting/play_rules_setting.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('建立比賽'),
              onPressed: () async {
                Navigator.of(context).pushNamed(PlayRulesSetting.routeName);
              },
            ),
            ElevatedButton(
              child: const Text('退出'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

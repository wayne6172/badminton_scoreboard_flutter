import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'badminton_court.dart';
import 'score_board.dart';

class BadmintonScoreBoard extends StatelessWidget {
  const BadmintonScoreBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(42.0),
        child: AppBar(
          title: const Text('Test'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.info),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: const <Widget>[
          Expanded(
            flex: 8000,
            child: BadmintonCourt(),
          ),
          Expanded(
            flex: 1500,
            child: ScoreBoard(),
          ),
        ],
      ),
    );
  }
}

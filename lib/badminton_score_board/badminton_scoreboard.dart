import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'badminton_court.dart';
import 'score_board.dart';

class BadmintonScoreboard extends StatefulWidget {
  static const String routeName = '/badminton_scoreboard';

  const BadmintonScoreboard({Key? key}) : super(key: key);

  @override
  State<BadmintonScoreboard> createState() => BadmintonScoreboardState();
}

class BadmintonScoreboardState extends State<BadmintonScoreboard> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

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
          automaticallyImplyLeading: false,
          title: const Text('Test'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.undo),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.redo),
              onPressed: () {},
            ),
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
            flex: 8500,
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

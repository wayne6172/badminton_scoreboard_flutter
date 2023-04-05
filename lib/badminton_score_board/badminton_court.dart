import 'package:badminton_scoreboard_flutter/badminton_score_board/member_info.dart';
import 'package:flutter/material.dart';

class BadmintonCourt extends StatelessWidget {
  const BadmintonCourt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 700,
          child: FractionallySizedBox(
            heightFactor: 1.0,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "左場得分",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 8600,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/badminton-court.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Row(
              children: const [
                Expanded(
                  flex: 5,
                  child: LeftTeam(),
                ),
                Expanded(
                  flex: 5,
                  child: RightTeam(),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 700,
          child: FractionallySizedBox(
            heightFactor: 1.0,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "右場得分",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class LeftTeam extends StatelessWidget {
  const LeftTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
            ),
            child: const MemberInfo(),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
            ),
            child: const MemberInfo(),
          ),
        ),
      ],
    );
  }
}

class RightTeam extends StatelessWidget {
  const RightTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
            ),
            child: const MemberInfo(),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
            ),
            child: const MemberInfo(),
          ),
        ),
      ],
    );
  }
}

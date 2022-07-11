import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 3500,
          child: Text(
            '1',
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 1500,
          child: ElevatedButton(
            child: const Text('換場'),
            onPressed: () {},
          ),
        ),
        Expanded(
          flex: 1500,
          child: ElevatedButton(
            child: Text('終止'),
            onPressed: () {},
          ),
        ),
        const Expanded(
          flex: 3500,
          child: Text(
            '123',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

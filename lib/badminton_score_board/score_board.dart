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
            '0',
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 1500,
          child: Container(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              child: const Text('換場'),
              onPressed: () {},
            ),
          ),
        ),
        Expanded(
          flex: 1500,
          child: Container(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              child: const Text('終止'),
              onPressed: () async {
                final bool isExits = await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('確定終止比賽？'),
                      actions: [
                        ElevatedButton(
                          child: const Text('確定'),
                          onPressed: () {
                            Navigator.pop(context, true);
                          },
                        ),
                        ElevatedButton(
                          child: const Text('取消'),
                          onPressed: () {
                            Navigator.pop(context, false);
                          },
                        ),
                      ],
                    );
                  },
                );

                if (isExits) {
                  Navigator.pop(context);
                }
              },
            ),
          ),
        ),
        const Expanded(
          flex: 3500,
          child: Text(
            '0',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

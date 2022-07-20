import 'package:flutter/material.dart';

class PlayerSetting extends StatefulWidget {
  const PlayerSetting({Key? key}) : super(key: key);

  @override
  State<PlayerSetting> createState() => _PlayerSettingState();
}

class _PlayerSettingState extends State<PlayerSetting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('選手設定'),
    );
  }
}

import 'package:flutter/cupertino.dart';

class MemberInfo extends StatelessWidget {
  const MemberInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text('Hand-in'),
        Text('Image'),
        Text('Name'),
      ],
    );
  }
}

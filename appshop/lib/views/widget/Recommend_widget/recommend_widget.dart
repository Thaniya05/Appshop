import 'package:flutter/material.dart';

class RecommendList extends StatelessWidget {
  const RecommendList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Recommend"),
            Text("View All"),
          ],
        ),
        _buildblank(d: 10.0),
      ],
    );
  }

  Padding _buildblank({double d = 20.0}) => Padding(padding: EdgeInsets.all(d));
}

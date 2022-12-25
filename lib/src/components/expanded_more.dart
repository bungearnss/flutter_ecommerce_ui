import 'package:flutter/material.dart';

class ExpandedMore extends StatelessWidget {
  final String txt;
  final double delay;
  const ExpandedMore({super.key, required this.txt, required this.delay});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              txt,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(child: Container()),
            Row(
              children: const [
                Text(
                  "View all",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey,
                  size: 15,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

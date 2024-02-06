import 'package:flutter/material.dart';

class CardOptionAsk extends StatelessWidget {
  const CardOptionAsk({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.indigo,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            height: 75,
            width: 160,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
          ),
          Container(
            height: 125,
            width: 160,
            decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          )
        ],
      ),
    );
  }
}

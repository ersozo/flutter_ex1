import 'package:flutter/material.dart';

class ReCard extends StatelessWidget {
  final Color cardColor;
  final Function cardTap;
  final Widget cardChild;

  ReCard({
    @required this.cardColor,
    @required this.cardTap,
    @required this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cardTap,
      child: Container(
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: cardChild,
      ),
    );
  }
}

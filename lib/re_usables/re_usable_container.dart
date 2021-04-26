import 'package:flutter/material.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/utils/colors.dart';
import 'package:mrz/utils/container_size.dart';

class ReUsableContainer extends StatelessWidget {
  ReUsableContainer({@required this.cardChild, this.colour});

  final Widget cardChild;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:screenHeight(context)/14.5,
      width: screenWidth(context)/1.27,
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: kBorderLine,
            width: 1
          ),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: cardChild,
    );
  }
}

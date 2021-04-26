import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/utils/colors.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/utils/container_size.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/utils/font.dart';

class MainButton extends StatelessWidget {
  final Function onTap;
  final String title;
  final ShapeBorder shape;
  MainButton({@required this.onTap, @required this.title,this.shape});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight(context)/16.91,
      width: screenWidth(context)/1.146,
      child: RaisedButton(
        shape: shape,
        color: kButtonPressColor,
        elevation: 0,
        onPressed: onTap,
        child: AutoSizeText(
          title,
          maxLines: 3,
          style: Medium.copyWith(color: kWhiteColor, fontSize: 16),
        ),
      ),
    );
  }
}

import 'package:flightbookingapp/utils/styles.dart';
import 'package:flutter/material.dart';

class DoubleHeaderText extends StatelessWidget {
  final String bigText;
  final String smallText;
  const DoubleHeaderText({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(bigText, style: Styles.headLineStyle2,),
                InkWell(
                  onTap: (){
                    //print("this works");
                  },
                  child: Text(smallText, style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
              ],
    );
  }
}
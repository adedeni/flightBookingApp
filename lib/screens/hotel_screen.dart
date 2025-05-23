import 'package:flightbookingapp/utils/layout.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  Container(
      width: size.width*0.6,
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow:[
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5
          ) 
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/hotel1.jpg"))
            ),
          ),
          Gap(15),
          Text(
            "Open space",
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),  
          ),
          Gap(5),
            Text(
            "Lagos",
            style: Styles.headLineStyle3.copyWith(color: Colors.white),  
          ),
          Gap(8),
            Text(
            "₦40/night",
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),  
          ),
        ],
      ),
    );
    
  }
}
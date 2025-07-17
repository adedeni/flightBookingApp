import 'package:flightbookingapp/models/hotel_list_model.dart';
import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  final HotelModel hotel;
  //final Map<String, dynamic> hotel;

  const HotelView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width * 0.6,
      //height: AppLayout.getHeight(context, 350),
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(context, 15),
        vertical: AppLayout.getHeight(context, 17),
      ),
      margin: EdgeInsets.only(
        right: AppLayout.getWidth(context, 17),
        top: AppLayout.getHeight(context, 5),
      ),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 24)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: AppLayout.getHeight(context, 20),
            spreadRadius: AppLayout.getHeight(context, 5),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(context, 180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 12)),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(hotel.image.toString()),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(context, 15)),
          Text(
            hotel.name.toString(),
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Gap(AppLayout.getHeight(context, 5)),
          Text(
            hotel.state.toString(),
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(context, 8)),
          Text(
            "₦${hotel.amountPerNight}",
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}

import 'package:flightbookingapp/utils/styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Styles.backgroundColor,
      body: ListView(
        children: [
          Container(
            child: Column(
             children: [
              Gap(40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF4F6FD)
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column( 
                  children: [
                  
                    Icon(FluentSystemIcons.ic_fluent_person_regular, color: Color(0Xffbfc205)),
                    SizedBox(height: 10,),
                    Text(
                      "Username: Adedeni",
                      style: Styles.headLineStyle4.copyWith(decoration: TextDecoration.underline),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Fullname: Adeshina Olayode Mubaraq",
                      style: Styles.headLineStyle4.copyWith(decoration: TextDecoration.underline),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Phone Number: 09036176161",
                      style: Styles.headLineStyle4.copyWith(decoration: TextDecoration.underline),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Gender: Male",
                      style: Styles.headLineStyle4.copyWith(decoration: TextDecoration.underline),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Address: Olodo Garage",
                      style: Styles.headLineStyle4.copyWith(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
             ],
            ),
          ),
        ],
      )
    );
  }
}
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen2 extends StatelessWidget {
  const ProfileScreen2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Colors.black,
     appBar: AppBar(
      title: Center(child: Text("My Profile", style: Styles.headLineStyle3.copyWith(color: Colors.white))),
      backgroundColor: Color(0xFF3A3A3A),
      toolbarHeight: 40,
     ),
      body: ListView(
        children: [
          Gap(20),
          Container(
            //i used the decoration to remove the container error
            decoration: BoxDecoration(
              
            ),
            child: Column(
             children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF1E1E1E)
                ),
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column( 
                  children: [
                SizedBox(height: 5,),
                    Text(
                      "Username: Adedeni",
                      style: Styles.headLineStyle4,
                      
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Fullname: Adeshina Olayode Mubaraq",
                      style: Styles.headLineStyle4,
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Phone Number: 09036176161",
                      style: Styles.headLineStyle4,
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
                    SizedBox(height: 5,),
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
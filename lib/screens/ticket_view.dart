import 'package:flightbookingapp/utils/layout.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flightbookingapp/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
     width: size.width*0.85,
     height: 200,
     child: Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: [
          //blue part of the ticket
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF526799),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
              topRight: Radius.circular(21))
            ),
            padding: EdgeInsets.all(16),
            child: Column(children: [
              Row(
                children: [
                    Text("LAG", style: Styles.headLineStyle3.copyWith(color: Colors.white,)),
                    Spacer(),
                    ThickContainer(),
                    Expanded(child: Stack(
                      children: [
                        SizedBox(
                        height: 24,
                        child: LayoutBuilder(
                          builder: (BuildContext context, BoxConstraints constraints) {
                            //print("the width is ${constraints.constrainWidth()}");
                            return Flex(
                            direction:  Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                              width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(color: Colors.white),),                          
                            )),
                            );
                          }, 
                          
                        ),
                        ),
                        Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white,),)),
                      ]
                    )),
                    
                    ThickContainer(),
                    Spacer(),
                    Text("ABJ", style: Styles.headLineStyle3.copyWith(color: Colors.white,))
                ],
              ),
              Gap(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100, child: Text("Lagos", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                  ),
                  Text("5H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                  SizedBox(
                    width: 100, child: Text("Abuja", textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                  ),
                ],
              )
            ],)
          ),
          //orange part of the ticket
          Container(
          color: Styles.orangeColor,
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Styles.backgroundColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                        )
                    )),
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(width: 5, height: 1,
                      child: DecoratedBox(decoration: BoxDecoration(
                        color: Colors.white
                      )),))
                    );
                    },
                    
                  ),
                )),
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Styles.backgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                        )
                    )),
                )
              
              ],
            ),
          ),
        Container(
              decoration: BoxDecoration(
              color: Styles.orangeColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),
              bottomRight: Radius.circular(21))
            ),
            padding: EdgeInsets.only(left: 16, top: 10, right:16, bottom: 16 ),
                child: Column(children: [
              Row(
                children: [
                    Text("22 May", style: Styles.headLineStyle3.copyWith(color: Colors.white,)),
                    Spacer(),
                    Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white,)),
                    Spacer(),
                    Text("May 23", style: Styles.headLineStyle3.copyWith(color: Colors.white,))
                ],
              ),
              Gap(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100, child: Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                  ),
                  Text("Departure time", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                  SizedBox(
                    width: 100, child: Text("Number", textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                  ),
                ],
              )
            ],)
        )
        ],
      ),
     ),
    );
  }
}
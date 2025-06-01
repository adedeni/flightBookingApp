import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flutter/material.dart';

class TopTabs extends StatelessWidget {
  final String firstTab;
  final String secoondTab;
  const TopTabs({super.key, required this.firstTab, required this.secoondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 50)),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            //airline tickets
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(context, 7),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(context, 50)),
                ),
                color: Colors.white,
              ),
              child: Center(child: Text(firstTab, style: TextStyle(fontWeight: FontWeight.w500),)),
            ),
            //hotels
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(context, 7),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(context, 50)),
                ),
                color: Colors.transparent,
              ),
              child: Center(child: Text(secoondTab, style: TextStyle(fontWeight: FontWeight.w500),)),
            ),
          ],
        ),
      ),
    );
  }
}

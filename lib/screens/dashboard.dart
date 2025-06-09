import 'package:flutter/material.dart';
import '../widgets/new_special_card.dart';
import '../widgets/resturant_card.dart';

class FoodDashboard extends StatelessWidget {
  const FoodDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Welcome, ADEDENI',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Categories
            SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  NewSpecialCards(title: 'New\nSpecials', color: Color(0xFFFFE0B2)),
                  NewSpecialCards(title: 'Swallow'),
                  NewSpecialCards(title: 'Drinks'),
                  NewSpecialCards(title: 'Shawarma'),
                  NewSpecialCards(title: 'Pizza'),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const Text('Resturants', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            const SizedBox(height: 12),
            Row(
              children: const [
                Expanded(child: ResturantCards(title: 'Amala Sky', subtitle: 'Amala with abula', rating: '4.9')),
                SizedBox(width: 12),
                Expanded(child: ResturantCards(title: 'Item 7go', subtitle: 'Jollof rice', rating: '4.2')),
              ],
            ),

            const SizedBox(height: 24),

            const Text('Best prices', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            const SizedBox(height: 12),
            SizedBox(
              height: 130,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (_, index) {
                  return Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('%', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                            Icon(Icons.add_circle_outline, color: Colors.deepOrange),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

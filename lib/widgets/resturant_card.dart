import 'package:flutter/material.dart';

class ResturantCards extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? rating;

  const ResturantCards({
    super.key,
    required this.title,
    required this.subtitle,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(height: 6),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 2),
          Row(
            children: [
                Text('$rating ★ ', style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.w600)),
              Expanded(
                child: Text(
                  subtitle,
                  style: const TextStyle(fontSize: 12),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

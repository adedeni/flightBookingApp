import 'package:flutter/material.dart';

class NewSpecialCards extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Color color;

  const NewSpecialCards({
    super.key,
    required this.title,
    this.subtitle,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const CircleAvatar(radius: 20, backgroundColor: Colors.grey),
          const SizedBox(height: 6),
          Text(title, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
          if (subtitle != null)
            Text(subtitle!, textAlign: TextAlign.center, style: const TextStyle(fontSize: 10)),
        ],
      ),
    );
  }
}

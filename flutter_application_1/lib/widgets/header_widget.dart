// widgets/header_widget.dart
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome back,',
              style: TextStyle(fontSize: 14, color: Color(0xFF6C757D)),
            ),
            const SizedBox(height: 4),
            Text(
              'Sadman Hossain',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 4),
            ],
          ),
          child: const Icon(
            Icons.notifications_none_outlined,
            color: Color(0xFF4B6EFF),
          ),
        ),
      ],
    );
  }
}

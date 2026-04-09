// widgets/quick_actions_widget.dart
import 'package:flutter/material.dart';

class QuickActionsWidget extends StatelessWidget {
  const QuickActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildAction(Icons.send, 'Send', const Color(0xFF4B6EFF)),
        _buildAction(Icons.compare_arrows, 'Transfer', const Color(0xFF6C5CE7)),
        _buildAction(Icons.receipt, 'Bill', const Color(0xFF00B894)),
        _buildAction(Icons.more_horiz, 'More', const Color(0xFFFDA7DF)),
      ],
    );
  }

  Widget _buildAction(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: color, size: 24),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

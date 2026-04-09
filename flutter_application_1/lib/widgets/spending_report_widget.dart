// widgets/spending_report_widget.dart
import 'package:flutter/material.dart';

class SpendingReportWidget extends StatelessWidget {
  const SpendingReportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total Expenses (Last 30 days)',
                style: TextStyle(color: Color(0xFF6C757D)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFE8F5E9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.arrow_upward,
                      size: 12,
                      color: Color(0xFF2E7D32),
                    ),
                    SizedBox(width: 2),
                    Text(
                      'Up 12%',
                      style: TextStyle(fontSize: 10, color: Color(0xFF2E7D32)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            '-\$1,270.00',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE53935),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Spending Breakdown',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),
          _buildCategory(
            'Food & Drink',
            '\$450.00',
            35,
            const Color(0xFF4B6EFF),
          ),
          _buildCategory('Shopping', '\$320.00', 25, const Color(0xFF6C5CE7)),
          _buildCategory('Housing', '\$280.00', 22, const Color(0xFF00B894)),
          _buildCategory('Transport', '\$150.00', 12, const Color(0xFFFDA7DF)),
          _buildCategory('Other', '\$70.00', 6, const Color(0xFFE17055)),
        ],
      ),
    );
  }

  Widget _buildCategory(String name, String amount, int percent, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(name),
                ],
              ),
              Text(amount, style: const TextStyle(fontWeight: FontWeight.w600)),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: percent / 100,
                    backgroundColor: Colors.grey[200],
                    color: color,
                    minHeight: 6,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '$percent%',
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

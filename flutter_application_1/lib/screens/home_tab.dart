// screens/home_tab.dart (Tab 0: Dashboard Overview)
import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/balance_card_widget.dart';
import '../widgets/quick_actions_widget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HeaderWidget(),
              SizedBox(height: 24),
              BalanceCardWidget(),
              SizedBox(height: 24),
              QuickActionsWidget(),
              SizedBox(height: 24),
              // Recent Activity Preview
              Text(
                'Recent Activity',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF212529),
                ),
              ),
              SizedBox(height: 12),
              RecentActivityPreview(),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentActivityPreview extends StatelessWidget {
  const RecentActivityPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        children: [
          _buildActivityItem(
            'Netflix Subscription',
            'Entertainment',
            '\$19.99',
            Icons.tv,
            Colors.red[400]!,
          ),
          const Divider(height: 0, thickness: 0.5),
          _buildActivityItem(
            'Coffee Shop',
            'Food & Drink',
            '\$4.50',
            Icons.local_cafe,
            Colors.brown[400]!,
          ),
          const Divider(height: 0, thickness: 0.5),
          _buildActivityItem(
            'Salary Deposit',
            'Income',
            '+\$3,500.00',
            Icons.attach_money,
            Colors.green[600]!,
          ),
        ],
      ),
    );
  }

  Widget _buildActivityItem(
    String title,
    String category,
    String amount,
    IconData icon,
    Color color,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 20, color: color),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  category,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: amount.contains('+') ? Colors.green[600] : Colors.red[400],
            ),
          ),
        ],
      ),
    );
  }
}

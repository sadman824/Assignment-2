// screens/spending_tab.dart (Tab 1: Full Spending Report)
import 'package:flutter/material.dart';
import '../widgets/spending_report_widget.dart';

class SpendingTab extends StatelessWidget {
  const SpendingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text('Spending Analysis'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SpendingReportWidget(),
            const SizedBox(height: 24),

            // Spending Insights Card
            Container(
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
                  const Row(
                    children: [
                      Icon(Icons.lightbulb_outline, color: Color(0xFF4B6EFF)),
                      SizedBox(width: 8),
                      Text(
                        'Spending Insights',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F4FF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      '💡 Your food & drink spending is 35% of total expenses. Consider cooking at home more often to save up to \$200 monthly!',
                      style: TextStyle(color: Color(0xFF4B6EFF), height: 1.4),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

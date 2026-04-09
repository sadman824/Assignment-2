// screens/profile_tab.dart (Tab 3: Profile & Settings)
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black87,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Avatar and Name
            Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF4B6EFF), Color(0xFF6C5CE7)],
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                      child: Icon(Icons.person, size: 50, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Sadman Hossain',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    '2230824@iub.edu.bd',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Stats Cards Row
            Row(
              children: [
                Expanded(
                  child: _buildStatCard(
                    'Total Balance',
                    '\$8,945.32',
                    Icons.account_balance_wallet,
                    const Color(0xFF4B6EFF),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildStatCard(
                    'Monthly Spend',
                    '\$1,270',
                    Icons.trending_down,
                    Colors.red[400]!,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // User Details Card
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
                      Icon(Icons.person_outline, color: Color(0xFF4B6EFF)),
                      SizedBox(width: 8),
                      Text(
                        'Personal Information',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildInfoRow('Student ID', '2230824'),
                  _buildDivider(),
                  _buildInfoRow('Email', '2230824@iub.edu.bd'),
                  _buildDivider(),
                  _buildInfoRow('Phone', '+880 1322404089'),
                  _buildDivider(),
                  _buildInfoRow('Member Since', 'January 2024'),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Linked Accounts
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
                      Icon(Icons.link_outlined, color: Color(0xFF4B6EFF)),
                      SizedBox(width: 8),
                      Text(
                        'Linked Accounts',
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
                    child: const Row(
                      children: [
                        Icon(
                          Icons.account_balance_wallet,
                          color: Color(0xFF4B6EFF),
                        ),
                        SizedBox(width: 12),
                        Text('Shared Savings Account'),
                        Spacer(),
                        Text(
                          '\$5,000.00',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF3E0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.school, color: Color(0xFFFF9800)),
                        SizedBox(width: 12),
                        Text('Student Emergency Fund'),
                        Spacer(),
                        Text(
                          '\$2,500.00',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Bio Card
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
                      Icon(Icons.edit_note_outlined, color: Color(0xFF4B6EFF)),
                      SizedBox(width: 8),
                      Text(
                        'Bio / Story',
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
                      color: const Color(0xFFF8F9FA),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      '"I\'m currently focusing on my final year, balancing studies with building side projects. I believe financial health is key to academic success. I love hiking on weekends and planning my next big travel adventure!"',
                      style: TextStyle(height: 1.4),
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

  Widget _buildStatCard(
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
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
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(height: 1, thickness: 0.5);
  }
}

import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.notifications_outlined, color: Colors.grey[700]),
        //     onPressed: () {
        //       // Handle notification tap
        //     },
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting Text and User Name
            Text(
              'Hi,',
              style: TextStyle(fontSize: 24, color: Colors.grey[600]),
            ),
            Text(
              'Enjelin Morgeana',
              style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 20),

            // Total Balance Card
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.teal[400],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Balance',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '2,548.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Income', style: TextStyle(color: Colors.white70)),
                          Text(
                            '1,840.00',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Expenses', style: TextStyle(color: Colors.white70)),
                          Text(
                            '284.00',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Transactions History Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions History',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Handle "See all" tap

                  },
                  child: Text(
                    'See all',
                    style: TextStyle(color: Colors.teal[800]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Transactions List
            Expanded(
              child: ListView(
                children: [
                  buildTransactionItem(
                    icon: Icons.shopping_bag_outlined,
                    title: 'Shopping',
                    subtitle: 'Buy some grocery',
                    amount: '-1120',
                    color: Colors.orange,
                    time: '10:00 AM',
                  ),
                  buildTransactionItem(
                    icon: Icons.subscriptions_outlined,
                    title: 'Subscription',
                    subtitle: 'Disney+ Annual',
                    amount: '-880',
                    color: Colors.purple,
                    time: '03:30 PM',
                  ),
                  buildTransactionItem(
                    icon: Icons.fastfood_outlined,
                    title: 'Food',
                    subtitle: 'Buy a ramen',
                    amount: '-332',
                    color: Colors.red,
                    time: '07:30 PM',
                  ),
                  buildTransactionItem(
                    icon: Icons.attach_money_outlined,
                    title: 'Salary',
                    subtitle: 'Salary for July',
                    amount: '+5000',
                    color: Colors.green,
                    time: '04:30 PM',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      );
  }

  Widget buildTransactionItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required String amount,
    required Color color,
    required String time,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
            child: Icon(icon, color: color),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amount,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: amount.contains('-') ? Colors.red : Colors.green,
                ),
              ),
              Text(
                time,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

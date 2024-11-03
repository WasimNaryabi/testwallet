import 'package:flutter/material.dart';

class ExpenseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistics'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Top Spending', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            buildExpenseItem('Shopping', '-1120', Colors.orange),
            buildExpenseItem('Subscription', '-880', Colors.purple),
            buildExpenseItem('Food', '-320', Colors.red),
            buildExpenseItem('Transportation', '-500', Colors.blue),
          ],
        ),
      ),
    );
  }

  Widget buildExpenseItem(String title, String amount, Color color) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(Icons.category, color: color),
        ),
        title: Text(title),
        trailing: Text(
          amount,
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

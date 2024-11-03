import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reports'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildTransactionItem('Shopping', '-1120', Colors.orange),
            buildTransactionItem('Subscription', '-800', Colors.purple),
            buildTransactionItem('Food', '-320', Colors.red),
            buildTransactionItem('Salary', '+5000', Colors.green),
            buildTransactionItem('Passive Income', '+300', Colors.blue),
            buildTransactionItem('Transportation', '-500', Colors.cyan),
          ],
        ),
      ),
    );
  }

  Widget buildTransactionItem(String title, String amount, Color color) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(Icons.category, color: color),
        ),
        title: Text(title),
        trailing: Text(
          amount,
          style: TextStyle(
              color: amount.startsWith('-') ? Colors.red : Colors.green,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

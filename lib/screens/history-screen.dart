import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions History'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // Sample transaction items
          buildTransactionItem('Shopping', '-1120', Colors.orange),
          buildTransactionItem('Subscription', '-880', Colors.purple),
          buildTransactionItem('Food', '-320', Colors.red),
          buildTransactionItem('Salary', '+5000', Colors.green),
          buildTransactionItem('Passive Income', '+300', Colors.blue),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.teal[800],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
        subtitle: Text('Details about transaction'),
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

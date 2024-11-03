import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_balance_wallet, size: 100),
            Text('DWALLET', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Your next digital personal wallet'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:testwallet/screens/dashboard-screen.dart';
import 'package:testwallet/screens/expense-screen.dart';
import 'package:testwallet/screens/income-screen.dart';
import 'package:testwallet/screens/profile-screen.dart';
import 'package:testwallet/screens/report-screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Screens
  static List<Widget> _widgetOptions = <Widget>[
    DashboardScreen(),
    ExpenseScreen(),
    ReportScreen(),
    IncomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(icon: Icon(Icons.trending_down), label: 'State'),
          const BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Report'),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

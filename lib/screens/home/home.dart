import 'package:flutter/material.dart';
import 'package:money_manager/screens/profile/profile.dart';
import 'package:money_manager/screens/statistics/statistics.dart';
import 'package:money_manager/screens/transactions/transactions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    TransactionsScreen(),
    StatisticsScreen(),
    ProfileScreen()
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long), label: 'Transaksi'),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart), label: 'Statistik'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Profil')
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:studyplanner/constants/colors.dart';
import 'package:studyplanner/pages/main_screens/assignments_page.dart';
import 'package:studyplanner/pages/main_screens/courses_page.dart';
import 'package:studyplanner/pages/main_screens/main_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = [
    MainPage(),
    CoursesPage(),
    AssignmentPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
            tooltip: 'Home Page',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.book),
            label: 'Courses',
            tooltip: 'Courses Page',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.assignment),
            label: 'Assignments',
            tooltip: 'Assignments Page',
          ),
        ],
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        elevation: 0,
      ),
      body: Center(child: _pages.elementAt(_selectedIndex)),
    );
  }
}

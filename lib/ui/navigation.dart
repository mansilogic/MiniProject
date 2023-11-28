import 'package:flutter/material.dart';
import 'package:miniproject1/ui/homescreen.dart';
import 'package:miniproject1/ui/login.dart';
import 'package:miniproject1/ui/registration.dart';
import 'package:miniproject1/ui/settings.dart';

class NavigatePages extends StatefulWidget {
  const NavigatePages({super.key});

  @override
  State<NavigatePages> createState() => _NavigatePagesState();
}

class _NavigatePagesState extends State<NavigatePages> {
  late List<Widget> _tabs;
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabs = [HomeScreen(), Login(), Registration(), Settings()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (_) => _tabs[index]));
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

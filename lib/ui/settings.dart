import 'package:flutter/material.dart';
import 'package:miniproject1/widgets/export_widgets.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 100, 189, 92),
          elevation: 0,
          centerTitle: true,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Settings',
            style: TextStyle(fontFamily: 'ABeeZee', fontSize: 22),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage('https://picsum.photos/222'),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dimus Ibnu Malik',
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'ABeeZee',
                            fontWeight: FontWeight.bold),
                      ),
                      CustomText(
                        text: 'Flutter Developer',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 231, 227, 227),
                height: 22,
                thickness: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  _menuItem(
                      title: "Themes", icon: Icons.dark_mode, onTap: () {}),
                ],
              ),
              Row(
                children: [
                  _menuItem(title: "Dashboard", icon: Icons.home, onTap: () {}),
                ],
              ),
              Row(
                children: [
                  _menuItem(title: "Login", icon: Icons.person, onTap: () {}),
                ],
              ),
              Row(
                children: [
                  _menuItem(
                      title: "Register",
                      icon: Icons.app_registration,
                      onTap: () {}),
                ],
              ),
              Row(
                children: [
                  _menuItem(
                      title: "About",
                      icon: Icons.question_answer,
                      onTap: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  dynamic _menuItem(
      {required String title,
      required IconData icon,
      required Function onTap}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Row(
            children: [
              Icon(
                icon,
                size: 18,
              ),
              const SizedBox(width: 15),
              Text(title,
                  style: const TextStyle(
                    fontFamily: 'ABeeZee',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ))
            ],
          )),
    );
  }
}

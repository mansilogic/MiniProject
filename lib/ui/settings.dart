import 'package:flutter/material.dart';

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
          backgroundColor: Color.fromARGB(255, 122, 226, 112),
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
          padding: EdgeInsets.symmetric(vertical: 22, horizontal: 25),
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
                      Text(
                        'Flutter Developer',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: 'ABeeZee',
                            fontWeight: FontWeight.w100),
                      ),
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
                height: 22,
              ),
              Row(
                children: [
                  const Icon(Icons.dark_mode),
                  const SizedBox(
                    width: 22,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: const Text(
                      'Themes',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontFamily: 'ABeeZee',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Icon(Icons.dashboard),
                  const SizedBox(
                    width: 22,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: const Text(
                      'Dashboard',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontFamily: 'ABeeZee',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Icon(Icons.person),
                  const SizedBox(
                    width: 22,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: const Text(
                      'LogIn',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontFamily: 'ABeeZee',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Icon(Icons.app_registration),
                  const SizedBox(
                    width: 22,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontFamily: 'ABeeZee',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Icon(Icons.question_answer),
                  const SizedBox(
                    width: 22,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: const Text(
                      'About',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontFamily: 'ABeeZee',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

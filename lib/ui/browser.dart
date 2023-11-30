import 'package:flutter/material.dart';

class BrowserList extends StatefulWidget {
  const BrowserList({Key? key}) : super(key: key);

  @override
  State<BrowserList> createState() => _BrowserListState();
}

class _BrowserListState extends State<BrowserList> {
  List<Widget> newsList = [];
  List<String> browserImages = [
    'lib/images/browser.jpg',
    'lib/images/big-one.jpg',
    'lib/images/landscape-photography-13.jpg'
  ];

  @override
  void initState() {
    super.initState();
    manageList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Color.fromARGB(255, 231, 227, 227),
          height: 22,
          thickness: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Browser",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'ABeeZee',
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                "Filter",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: newsList,
        )
      ],
    );
  }
  manageList() {
    for (int i = 0; i < browserImages.length; i++) {
      newsList
          .add(InkWell(onTap: () {}, child: browserContent(browserImages[i])));
    }
  }

  Widget browserContent(String imagePath) {
    return Stack(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imagePath),
            ),
          ),
          margin: const EdgeInsets.symmetric(vertical: 10),
        ),
        Positioned(
          top: 16,
          right: 10,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black.withOpacity(0),
              shape: const CircleBorder(),
              padding: EdgeInsets.all(10),
              minimumSize: const Size.fromRadius(2),
            ),
            onPressed: () {},
            child: const Icon(Icons.redeem_sharp),
          ),
        ),
        Positioned(
          bottom: 16,
          right: 10,
          child: GestureDetector(
            onTap: () {},
            child: const Text(
              'See More...',
              style: TextStyle(
                  fontFamily: 'ABeeZee',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

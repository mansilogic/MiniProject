// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:miniproject1/widgets/export_widgets.dart';
import 'package:miniproject1/utils/export_utils.dart';

class BrowserList extends StatefulWidget {
  const BrowserList({Key? key}) : super(key: key);

  @override
  State<BrowserList> createState() => _BrowserListState();
}

class _BrowserListState extends State<BrowserList> {
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
          height: 20,
          thickness: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: 'Browser',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            InkWell(
              onTap: () {},
              child: Text(
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

  void manageList() {
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
          margin: EdgeInsets.symmetric(vertical: 10),
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
            child: Text(
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

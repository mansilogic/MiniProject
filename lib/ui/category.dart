import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);
  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _category(
          'lib/category_icons/icons8-ask-question-64.png',
          'Query',
        ),
        _category(
          'lib/category_icons/icons8-camera-64.png',
          'Camera',
        ),
        _category(
          'lib/category_icons/icons8-moon-and-stars-64.png',
          'Theme',
        ),
        _category(
          'lib/category_icons/icons8-music-64.png',
          'Music',
        ),
      ],
    );
  }

  Widget _category(String imagePath, String categoryName) {
    return Column(
      children: [
        InkWell(
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 240, 238, 238),
            ),
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          categoryName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: 'ABeeZee',
          ),
        )
      ],
    );
  }
}

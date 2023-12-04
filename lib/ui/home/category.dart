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
          'assets/category_icons/ic_query.png',
          'Query',
        ),
        _category(
          'assets/category_icons/ic_camera.png',
          'Camera',
        ),
        _category(
          'assets/category_icons/ic_theme.png',
          'Theme',
        ),
        _category(
          'assets/category_icons/ic_music.png',
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

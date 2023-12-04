import 'package:flutter/material.dart';
import 'package:miniproject1/ui/home/browser.dart';
import 'package:miniproject1/ui/home/carsousel-slider.dart';
import 'package:miniproject1/ui/home/category.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatefulWidget {
  final Widget content;

  const ShimmerEffect({Key? key, required this.content}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ShimmerState createState() => _ShimmerState();
}

class _ShimmerState extends State<ShimmerEffect> {
  bool _showShimmer = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _showShimmer = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _showShimmer
        ? Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            period: const Duration(seconds: 1),
            child: widget.content,
          )
        : widget.content;
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 15),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'hello,',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'ABeeZee',
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'Dimus Ibnu Malik',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.green,
                          fontFamily: 'ABeeZee',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                ],
              ),
              SizedBox(height: 15),
              ShimmerEffect(
                content: CarsouselSlider(),
              ),
              SizedBox(height: 15),
              ShimmerEffect(
                content: CategoryList(),
              ),
              ShimmerEffect(
                content: BrowserList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

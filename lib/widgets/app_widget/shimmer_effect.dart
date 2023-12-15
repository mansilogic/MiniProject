import 'package:flutter/material.dart';
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

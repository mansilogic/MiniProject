import 'package:miniproject1/ui/export_ui.dart';
import 'package:miniproject1/utils/export_utils.dart';

class CarsouselSlider extends StatefulWidget {
  const CarsouselSlider({Key? key}) : super(key: key);

  @override
  State<CarsouselSlider> createState() => _CarsouselSliderState();
}

class _CarsouselSliderState extends State<CarsouselSlider> {
  Decoration imageDecoration(String imagePath) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = imagePaths.map((imagePath) {
      return Container(
        decoration: imageDecoration(imagePath),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 18),
                          backgroundColor: Colors.black.withOpacity(0.05),
                          shape: const CircleBorder(),
                          minimumSize: const Size.fromRadius(2)),
                      onPressed: () {
                        // ignore: avoid_print
                        print('Button clicked index number : $currentIndex');
                      },
                      child: const Text(
                        'swipe',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }).toList();
    return Column(
      children: [
        CarouselSlider(
          items: items,
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: false,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        DotsIndicator(
          dotsCount: items.length,
          position: currentIndex.toInt(),
        )
      ],
    );
  }
}

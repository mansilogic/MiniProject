import 'package:miniproject1/ui/export_ui.dart';
import 'package:miniproject1/widgets/export_widgets.dart';

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

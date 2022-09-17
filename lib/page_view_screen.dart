import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = PageController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page View',
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          PageView(
            physics:const NeverScrollableScrollPhysics(),
            controller: controller,
            children: [
              Container(
                color: Colors.teal,
              ),
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.amber,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.red,
                    dotColor: Colors.white,
                    spacing: 5,
                    dotHeight: 12,
                    strokeWidth: 10,
                    radius: 20,
                    dotWidth: 18,
                    expansionFactor: 2,
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    controller.nextPage(
                      duration: const Duration(
                        seconds: 1,
                      ),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

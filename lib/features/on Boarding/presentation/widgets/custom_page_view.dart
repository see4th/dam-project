import 'package:flutter/material.dart';
import 'package:new_app/features/on%20Boarding/presentation/widgets/page_view_item.dart';

class CustomePageView extends StatelessWidget {
  const CustomePageView({super.key,@required this.pageController});
final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
      PageViewItem(
       image: 'assets/photos/1.png',
       title: 'Algeria Unveiled',
        subtitle:
            'Dive into Algeria’s tapestry—heritage, scenic wonders, and vibrant culture.',
      ),
      PageViewItem(
       image: 'assets/photos/2.png',
        title: 'Exploring Algeria',
        subtitle:
            'Explore Algeria’s history, scenic vistas, and authentic experiences abound.',
      ),
      PageViewItem(
       image: 'assets/photos/3.png',
        title: 'Discovering Algeria',
        subtitle:
            'Discover Algeria’s diversity, rich history, and breathtaking natural allure.',
      ),
    ]);
  }
}

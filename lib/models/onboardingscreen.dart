class OnBoarding {
  String title;

  String image;
  OnBoarding({
    required this.title,
    required this.image,
  });
}

List<OnBoarding> onBoardingContent = [
  OnBoarding(
    title: 'Increase your research \n method',
    image: 'assets/images/page1.png',
  ),
  OnBoarding(
    title: 'Realize your own goals',
    image: 'assets/images/page2.png',
  ),
  OnBoarding(
    title: 'Boost your Creativity',
    image: 'assets/images/page3.png',
  ),
  OnBoarding(
    title: 'Let\'s build & Get Started!',
    image: 'assets/images/page4.png',
  )
];

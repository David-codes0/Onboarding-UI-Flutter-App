import 'package:flutter/material.dart';
import 'package:onboarding_screen_ui/constants/constants.dart';
import 'package:onboarding_screen_ui/models/onboardingscreen.dart';
import 'package:onboarding_screen_ui/routes/routes.dart';
import 'package:onboarding_screen_ui/service/page_change.dart';
import 'package:onboarding_screen_ui/widgets/dot_indicator.dart';
import 'package:onboarding_screen_ui/widgets/onboard_content.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ChangeNotifierProvider(
      create: (context) => PageChanger(),
      builder: (context, child) => SafeArea(
        child: Consumer<PageChanger>(
          builder: (context, value, child) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(RouteManager.thankyouPage);
                      },
                      child: const Text(
                        ' Skip >>',
                        style: TextStyle(
                          color: primaryPageColor2,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: PageView.builder(
                  onPageChanged: (newValue) => value.pageIndex = newValue,
                  controller: _pageController,
                  itemCount: onBoardingContent.length,
                  itemBuilder: (context, index) {
                    return OnboardingContent(
                        title: onBoardingContent[index].title,
                        image: onBoardingContent[index].image);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    onBoardingContent.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: DotIndicator(
                        isActive: index == value.pageindexx,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    primary: primaryAppColor,
                  ),
                  onPressed: () {
                    _pageController.nextPage(
                        duration: const Duration(
                          milliseconds: 700,
                        ),
                        curve: Curves.easeIn);
                    
                    if (value.pageindexx == onBoardingContent.length - 1) {
                      Navigator.of(context)
                          .pushNamed(RouteManager.thankyouPage);
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: value.pageindexx < onBoardingContent.length-1
                        ? const Icon(
                            Icons.arrow_forward,
                            size: 40,
                            color: Colors.black,
                          )
                        : Text(
                            'Get Started',
                            style: Theme.of(context).textTheme.headline6!,
                          ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      ' Sign in now.',
                      style: TextStyle(
                        color: primaryPageColor2,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ),
    ));
  }
}

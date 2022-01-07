part of '../onboardingpage.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  List<OnBoardingModel> _onBoardingPageList(BuildContext context) => [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _BuildBody(
            controller: _pageController,
            itemList: [],
            onPageChanged: (v) {
              setState(() {
                _currentIndex = v;
              });
            },
          ),
        ],
      ),
    );
  }
}

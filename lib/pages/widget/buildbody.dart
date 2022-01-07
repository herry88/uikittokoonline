part of '../onboarding/onboardingpage.dart';

class _BuildBody extends StatelessWidget {
  final List<OnBoardingModel> itemList;
  final PageController controller;
  final ValueChanged<int> onPageChanged;

  const _BuildBody({
    Key? key,
    required this.itemList,
    required this.controller,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Positioned(
      child: PageView.builder(
        itemCount: itemList.length,
        controller: controller,
        itemBuilder: (context, index) {
          final item = itemList[index];
          return Container(
            child: Text(
              'Dari Bodi',
            ),
          );
        },
      ),
    );
  }
}

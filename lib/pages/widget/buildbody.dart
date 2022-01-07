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
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 5,
            ),
            width: double.infinity,
            height: 250,
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
            ),
            child: Column(
              children: [
                Image.asset(
                  item.image!,
                  width: MediaQuery.of(context).size.height / 2,
                ),
                Text(
                  item.title!,
                  style: _theme.textTheme.headline3!.copyWith(
                    fontSize: 30.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15.0,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:get/get.dart';
import 'package:uikit/helpers/constans.dart';
import 'package:uikit/pages/onboarding/onboardingpage.dart';
import 'package:uikit/pages/splaschscreen.dart';

List<GetPage> allRouteJourney = [
  GetPage(
    name: HerryCommerceRoutes.splash,
    page: () => const SplasScreenCommerce(),
  ),
  GetPage(
    name: HerryCommerceRoutes.onboarding,
    page: () => const OnboardingScreen(),
  ),
];

part of '../sign_in_page.dart';

class HerryCommerceSignInScreen extends StatefulWidget {
  const HerryCommerceSignInScreen({Key? key}) : super(key: key);

  @override
  _HerryCommerceSignInScreenState createState() =>
      _HerryCommerceSignInScreenState();
}

class _HerryCommerceSignInScreenState extends State<HerryCommerceSignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: Const.margin,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            const _BuildHeader(),
            const SizedBox(
              height: Const.space25,
            ),
            
          ],
        ),
      ),
    );
  }
}

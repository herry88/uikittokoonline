part of '../sign_in_page.dart';

class HerryCommerceSignInScreen extends StatefulWidget {
  const HerryCommerceSignInScreen({Key? key}) : super(key: key);

  @override
  _HerryCommerceSignInScreenState createState() =>
      _HerryCommerceSignInScreenState();
}

class _HerryCommerceSignInScreenState extends State<HerryCommerceSignInScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;
  bool _isLoading = false;

  @override
  void initState() {
    _emailController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
    super.initState();
  }

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
            CustomTextFormField(
              controller: _emailController,
              hintText: AppLocalizations.of(context)!.email_address,
              keyboardType: TextInputType.emailAddress,
              prefixIcon: const Icon()
            ),
            SizedBox(
              height: Const.space15,
            ),
          ],
        ),
      ),
    );
  }
}

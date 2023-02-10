import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme/app_theme.dart';
import 'welcome1.dart';

class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  State<Splash2> createState() => _SplashState();
}

class _SplashState extends State<Splash2> {
  final style = const TextStyle(fontSize: 50, fontWeight: FontWeight.w300);

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1500));

    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Welcome1(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.appgreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70, right: 50),
                  child: Image.asset(
                    'assets/icons/butterflyr.png',
                    height: 70,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 50, bottom: 30),
                  child: Image.asset(
                    'assets/icons/butterflyl.png',
                    height: 70,
                  ),
                ),
              ],
            ),
            Text(
              'KRISHI',
              style: GoogleFonts.chewy(
                  textStyle: style,
                  letterSpacing: 3,
                  color: Colors.white,
                  fontSize: 70),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Image.asset(
                    'assets/images/logo_2.png',
                    width: 400,
                    height: 400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

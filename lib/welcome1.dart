import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'welcome2.dart';

class Welcome1 extends StatelessWidget {
  const Welcome1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 75, left: 20, bottom: 60),
                child: Image.asset(
                  'assets/images/wc_1.png',
                  height: 300,
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'Health Checker',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: AppTheme.colors.appgreen),
                ),
              ),
              const SizedBox(
                width: 300,
                child: Text(
                  'Take a picture of your crop and send it to expert for disease detection of the crop.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppTheme.colors.appgreen,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 29, vertical: 14),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const Welcome2()),
                  ),
                );
              },
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'community.dart';
import 'home.dart';
import 'profile.dart';
import 'theme/app_theme.dart';

class Ecom extends StatefulWidget {
  const Ecom({Key? key}) : super(key: key);

  @override
  State<Ecom> createState() => _EcomState();
}

class _EcomState extends State<Ecom> {
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return const FirstContent();
  }
}

class FirstContent extends StatefulWidget {
  const FirstContent({Key? key}) : super(key: key);

  @override
  State<FirstContent> createState() => _FirstContentState();
}

class _FirstContentState extends State<FirstContent> {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return currentPage == 1
        ? Scaffold(
            drawer: const NavigationDrawer(),
            appBar: AppBar(
              title: SizedBox(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'E-Commerce',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.notifications,
                              size: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              elevation: 0,
              toolbarHeight: 130,
              backgroundColor: AppTheme.colors.appgreen,
            ),
            body: Column(
              children: [
                Container(
                  color: AppTheme.colors.appgreen,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/manure.jpeg',
                          height: 60,
                        ),
                        Image.asset(
                          'assets/images/seeds.jpeg',
                          height: 60,
                        ),
                        Image.asset(
                          'assets/images/growth.jpeg',
                          height: 60,
                        ),
                        Image.asset(
                          'assets/images/tools.jpeg',
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Shop by Brands',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              child: Image.asset(
                                'assets/images/brand1.jpeg',
                                height: 150,
                              ),
                              onTap: () {
                                _launchK();
                              },
                            ),
                            InkWell(
                              child: Image.asset(
                                'assets/images/brand3.jpeg',
                                height: 150,
                              ),
                              onTap: () {
                                _launchJk();
                              },
                            ),
                            InkWell(
                              child: Image.asset(
                                'assets/images/brand2.jpeg',
                                height: 150,
                              ),
                              onTap: () {
                                _launchIf();
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(15),
              child: BottomNavigationBar(
                showSelectedLabels: true,
                showUnselectedLabels: false,
                selectedItemColor: AppTheme.colors.appgreen,
                unselectedItemColor: Colors.black,
                backgroundColor: const Color.fromARGB(255, 242, 241, 241),
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(
                      Icons.home_rounded,
                      size: 30,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'E-Com',
                    icon: Icon(
                      Icons.filter_list_rounded,
                      size: 30,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Group',
                    icon: Icon(
                      Icons.group_rounded,
                      size: 30,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Profile',
                    icon: Icon(
                      Icons.person_rounded,
                      size: 30,
                    ),
                  )
                ],
                currentIndex: currentPage,
                onTap: (int index) {
                  setState(() {
                    currentPage = index;
                  });
                },
              ),
            ),
          )
        : currentPage == 0
            ? const MyHomePage()
            : currentPage == 2
                ? const Comm()
                : currentPage == 3
                    ? const Profile()
                    : const Text('NoPageHere');
  }
}

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return currentPage == 1
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: AppTheme.colors.appgreen,
              toolbarHeight: 130,
            ),
            body: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppTheme.colors.appgreen,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 29, vertical: 14),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Payment();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(15),
              child: BottomNavigationBar(
                showSelectedLabels: true,
                showUnselectedLabels: false,
                selectedItemColor: AppTheme.colors.appgreen,
                unselectedItemColor: Colors.black,
                backgroundColor: const Color.fromARGB(255, 242, 241, 241),
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(
                      Icons.home_rounded,
                      size: 30,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'E-Com',
                    icon: Icon(
                      Icons.filter_list_rounded,
                      size: 30,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Group',
                    icon: Icon(
                      Icons.group_rounded,
                      size: 30,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Profile',
                    icon: Icon(
                      Icons.person_rounded,
                      size: 30,
                    ),
                  )
                ],
                currentIndex: currentPage,
                onTap: (int index) {
                  setState(() {
                    currentPage = index;
                  });
                },
              ),
            ),
          )
        : currentPage == 0
            ? const MyHomePage()
            : currentPage == 2
                ? const Comm()
                : currentPage == 3
                    ? const Profile()
                    : const Text('NoPageHere');
  }
}

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return currentPage == 1
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: AppTheme.colors.appgreen,
              toolbarHeight: 130,
            ),
            body: Center(
              child: BackButton(
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const Product()),
                  ),
                ),
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(15),
              child: BottomNavigationBar(
                showSelectedLabels: true,
                showUnselectedLabels: false,
                selectedItemColor: AppTheme.colors.appgreen,
                unselectedItemColor: Colors.black,
                backgroundColor: const Color.fromARGB(255, 242, 241, 241),
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(
                      Icons.home_rounded,
                      size: 30,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'E-Com',
                    icon: Icon(
                      Icons.filter_list_rounded,
                      size: 30,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Group',
                    icon: Icon(
                      Icons.group_rounded,
                      size: 30,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Profile',
                    icon: Icon(
                      Icons.person_rounded,
                      size: 30,
                    ),
                  )
                ],
                currentIndex: currentPage,
                onTap: (int index) {
                  setState(() {
                    currentPage = index;
                  });
                },
              ),
            ),
          )
        : currentPage == 0
            ? const MyHomePage()
            : currentPage == 1
                ? const Ecom()
                : currentPage == 2
                    ? const Comm()
                    : currentPage == 3
                        ? const Profile()
                        : const Text('NoPageHere');
  }
}

_launchK() async {
  final Uri linkK = Uri.parse('https://www.kaveriseeds.in/');
  if (await canLaunchUrl(linkK)) {
    await launchUrl(linkK);
  } else {
    throw 'Could not launch $linkK';
  }
}

_launchIf() async {
  final Uri linkK = Uri.parse('https://www.iffco.in/en/corporate');
  if (await canLaunchUrl(linkK)) {
    await launchUrl(linkK);
  } else {
    throw 'Could not launch $linkK';
  }
}

_launchJk() async {
  final Uri linkK = Uri.parse('https://jkagri.com/');
  if (await canLaunchUrl(linkK)) {
    await launchUrl(linkK);
  } else {
    throw 'Could not launch $linkK';
  }
}

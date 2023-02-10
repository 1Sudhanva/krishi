import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'community.dart';
import 'e_com.dart';
import 'profile.dart';
import 'theme/app_theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: AppTheme.colors.appgreen),
      ),
      debugShowCheckedModeBanner: false,
      home: currentPage == 0
          ? Scaffold(
              drawer: const NavigationDrawer(),
              drawerEdgeDragWidth: 20,
              drawerDragStartBehavior: DragStartBehavior.start,
              appBar: AppBar(
                title: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Hello',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.notifications,
                            size: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                toolbarHeight: 130,
              ),
              body: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: ListView(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Image.asset(
                              'assets/images/hSlide_1.jpeg',
                              height: 350,
                              width: 350,
                            ),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Image.asset(
                              'assets/images/hSlide_2.jpeg',
                              height: 350,
                              width: 350,
                            ),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Image.asset(
                              'assets/images/hSlide_3.jpeg',
                              height: 350,
                              width: 350,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 155,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Today's Weather",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.location_on_rounded,
                              color: Colors.redAccent,
                            ),
                            Text(
                              'Tiptur, Karnataka',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: (() {
                            _weather();
                          }),
                          child: Image.asset(
                            'assets/images/weather.jpeg',
                            height: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              'Brands',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: (() {
                                    _launchK();
                                  }),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Image.asset(
                                      'assets/images/brand1.jpeg',
                                      height: 150,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    _launchIf();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Image.asset(
                                      'assets/images/brand2.jpeg',
                                      height: 150,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Image.asset(
                                      'assets/images/brand3.jpeg',
                                      height: 150,
                                    ),
                                  ),
                                  onTap: () {
                                    _launchJk();
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
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
                      label: 'Experts',
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
          : currentPage == 1
              ? const Ecom()
              : currentPage == 2
                  ? const Comm()
                  : currentPage == 3
                      ? const Profile()
                      : const Text('NoPageHere'),
    );
  }
}

//CALL VARIABLES
_makingCallP() async {
  var url = Uri.parse("tel:8904426872");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_makingCallA() async {
  var url = Uri.parse("tel:9535889597");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_weather() async {
  final Uri gWeather = Uri.parse(
      'https://www.accuweather.com/en/us/google/94043/weather-forecast/74907_poi');
  if (await canLaunchUrl(gWeather)) {
    await launchUrl(gWeather);
  } else {
    throw 'Could not launch $gWeather';
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

//Alert ANIL message widget

class AlertAnil extends StatelessWidget {
  const AlertAnil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AlertDialog(
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          content: SizedBox(
            height: 120,
            child: Column(
              children: [
                const Text(
                  'Anil Kumar P',
                  style: TextStyle(fontSize: 30),
                ),
                Column(
                  children: [
                    const Text(
                      'Ginger Expert',
                      style: TextStyle(fontSize: 22),
                    ),
                    const Divider(),
                    ElevatedButton(
                      onPressed: _makingCallA,
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.all(5.0)),
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(color: Colors.black),
                        ),
                      ),
                      child: const Text('Call'),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
//Alert Para message widget

class AlertP extends StatelessWidget {
  const AlertP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AlertDialog(
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        content: SizedBox(
          height: 120,
          child: Column(
            children: [
              const Text(
                'Parameshwara Naik N',
                style: TextStyle(fontSize: 30),
              ),
              Column(
                children: [
                  const Text(
                    'Areca Nut Expert',
                    style: TextStyle(fontSize: 22),
                  ),
                  const Divider(),
                  ElevatedButton(
                    onPressed: _makingCallP,
                    style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(color: Colors.black),
                      ),
                    ),
                    child: const Text('Call'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//SIDE BAR WIDGET

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);
  Widget buildHeader(BuildContext context) => Container();
  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.only(left: 20, top: 50),
        child: Wrap(
          runSpacing: 20,
          children: [
            ListTile(
              leading: Icon(
                Icons.home_outlined,
                color: AppTheme.colors.appgreen,
                size: 50,
              ),
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 30),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.filter_list_rounded,
                color: AppTheme.colors.appgreen,
                size: 50,
              ),
              title: const Text(
                'E-com',
                style: TextStyle(fontSize: 30),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const Ecom()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.group_outlined,
                color: AppTheme.colors.appgreen,
                size: 50,
              ),
              title: const Text(
                'Experts',
                style: TextStyle(fontSize: 30),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const Comm()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person_outline_rounded,
                color: AppTheme.colors.appgreen,
                size: 50,
              ),
              title: const Text(
                'Profile',
                style: TextStyle(fontSize: 30),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
            ),
            Divider(
              color: AppTheme.colors.appgreen,
            ),
            ListTile(
              leading: Icon(
                Icons.info_outline_rounded,
                color: AppTheme.colors.appgreen,
                size: 50,
              ),
              title: const Text(
                'About App',
                style: TextStyle(fontSize: 30),
              ),
              onTap: () {},
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  buildHeader(context),
                  buildMenuItems(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

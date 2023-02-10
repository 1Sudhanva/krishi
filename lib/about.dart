import 'package:flutter/material.dart';
import 'e_com.dart';
import 'home.dart';
import 'profile.dart';
import 'theme/app_theme.dart';

int itemCount = 5;

class Comm extends StatefulWidget {
  const Comm({Key? key}) : super(key: key);

  @override
  State<Comm> createState() => _CommState();
}

class _CommState extends State<Comm> {
  int currentPage = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: currentPage == 2
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
                            'Experts',
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
                toolbarHeight: 130,
                backgroundColor: AppTheme.colors.appgreen,
              ),
              body: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            margin: const EdgeInsets.only(left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.account_circle_outlined,
                                  color: AppTheme.colors.appgreen,
                                  size: 60,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'Anil Kumar P',
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const AlertAnil();
                              }),
                            );
                          },
                        ),
                        InkWell(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            margin: const EdgeInsets.only(left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.account_circle_outlined,
                                  color: AppTheme.colors.appgreen,
                                  size: 60,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'Parameshwara Naik N',
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const AlertP();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
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
          : currentPage == 0
              ? const MyHomePage()
              : currentPage == 1
                  ? const Ecom()
                  : currentPage == 3
                      ? const Profile()
                      : const Text('NoPageHere'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:krishi/login.dart';
import 'package:krishi/register.dart';
import 'community.dart';
import 'e_com.dart';
import 'home.dart';
import 'theme/app_theme.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int currentPage = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: currentPage == 3
          ? Scaffold(
              drawer: const NavigationDrawer(),
              appBar: AppBar(
                title: SizedBox(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Profile',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.notifications,
                            size: 30,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                toolbarHeight: 130,
                backgroundColor: AppTheme.colors.appgreen,
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 270,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 38.0),
                            child: Icon(
                              Icons.account_circle_rounded,
                              size: 180,
                              color: Color.fromARGB(255, 187, 187, 187),
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            height: 50,
                          ),
                          Text(
                            'The app works perfect with the profile',
                            textScaleFactor: 1.1,
                          ),
                          Text(
                            'In order to create a personalized profile the app needs your details',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      height: 50,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: AppTheme.colors.appgreen),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const LoginPage();
                            }),
                          );
                        }),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: AppTheme.colors.appgreen),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          child: Text(
                            'Register',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const Register();
                            }),
                          );
                        }),
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
                      : const Text('NoPageHere'),
    );
  }
}

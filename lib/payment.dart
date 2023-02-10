import 'package:flutter/material.dart';
import 'package:krishi/community.dart';
import 'package:krishi/home.dart';
import 'package:krishi/profile.dart';
import 'package:krishi/theme/app_theme.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: currentPage == 1
          ? Scaffold(
              appBar: AppBar(
                backgroundColor: AppTheme.colors.appgreen,
                toolbarHeight: 163,
              ),
              body: const Center(
                child: Text('Full Paid'),
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
                      : const Text('NoPageHere'),
    );
  }
}
